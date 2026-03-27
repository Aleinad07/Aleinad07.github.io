#!/bin/bash

# Create the output directory
mkdir -p resized

# Maximum file size in bytes (500 KB = 512000 bytes)
MAX_SIZE=512000

# Loop through all JPEG/JPG images in the current directory
for img in *.jpeg *.jpg; do
    # Skip if no files match
    [ -e "$img" ] || continue
    
    filename=$(basename "$img")
    base="${filename%.*}"
    output="resized/$base.webp"
    
    echo "Processing $filename..."
    
    # Step 1: Export with standard quality (80) without resizing first
    ffmpeg -y -i "$img" -c:v libwebp -q:v 80 "$output" -loglevel error
    
    # Get current file size (wc -c is cross-platform)
    size=$(wc -c < "$output" | tr -d ' ')
    
    # Step 2: If size > 500KB, iteratively scale down
    scale=90
    while [ "$size" -gt "$MAX_SIZE" ] && [ "$scale" -ge 10 ]; do
        echo " - Size is $((size / 1024))KB. Rescaling to $scale%..."
        
        # scale=trunc(...):-2 keeps aspect ratio and ensures the height is an even number
        ffmpeg -y -i "$img" -vf "scale=trunc(iw*$scale/100):-2" -c:v libwebp -q:v 80 "$output" -loglevel error
        
        size=$(wc -c < "$output" | tr -d ' ')
        scale=$((scale - 10))
    done
    
    echo " - Final size: $((size / 1024)) KB"
done

echo "All done!"