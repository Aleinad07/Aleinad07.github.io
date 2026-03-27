# Adaptar sitio web GitHub Pages para Daniela José López Medina

Transformar el portafolio personal existente (de Sebastian) para que use los datos de Daniela, traducirlo completamente al español y eliminar la sección de voluntariado.

## Datos de origen

| Fuente | Información que aporta |
|---|---|
| [CV_Daniela_Jose.tex](file:///home/s.lopezmedina/Documents/Aleinad07.github.io/CV_Daniela_Jose.tex) | Educación (Bachiller Psicología, U. de Lima), proyectos, habilidades técnicas/lingüísticas |
| [linkedin_about.md](file:///home/s.lopezmedina/Documents/Aleinad07.github.io/linkedin_about.md) | Texto "Acerca de mí" |
| [hobbies.md](file:///home/s.lopezmedina/Documents/Aleinad07.github.io/hobbies.md) | Hobbies: crochet, música, conciertos, cocinar, 3DS XL, sudoku, leer, seres queridos |
| `imagenes/` | Fotos disponibles: cocinar_galletas, cocinar_pizza, concierto, jugar_3ds, leer, linkedin_pf, manualidades, seres_queridos, tejer_crochet |

## Propuestas de Cambio

### HTML ([index.html](file:///home/s.lopezmedina/Documents/Aleinad07.github.io/index.html))

#### [MODIFY] [index.html](file:///home/s.lopezmedina/Documents/Aleinad07.github.io/index.html)

1. **Meta tags y título** → Daniela José López Medina, descripción en español
2. **Navbar** → Links en español: "Sobre mí", "Educación", "Habilidades", "Vida", "Proyectos". Quitar "Community" (voluntariado)
3. **Hero** → Nombre, tagline en español (Psicología Organizacional), ubicación, foto de perfil ([linkedin_pf.webp](file:///home/s.lopezmedina/Documents/Aleinad07.github.io/imagenes/linkedin_pf.webp)), links a LinkedIn/email de Daniela. Quitar GitHub
4. **About** → Texto del [linkedin_about.md](file:///home/s.lopezmedina/Documents/Aleinad07.github.io/linkedin_about.md) en español
5. **Timeline** → Cambiar a sección "Educación y Proyectos": Universidad de Lima + proyectos destacados del CV
6. **Skills** → Habilidades del CV: Tecnológicas (Excel, PowerPoint, etc.) e Idiomas
7. **Eliminar sección Volunteering** completa
8. **Hobbies** → Datos de [hobbies.md](file:///home/s.lopezmedina/Documents/Aleinad07.github.io/hobbies.md) con imágenes disponibles en `imagenes/`
9. **Quitar sección GitHub** (Daniela no tiene GitHub chart)
10. **Footer** → Datos de contacto de Daniela

### CSS ([style.css](file:///home/s.lopezmedina/Documents/Aleinad07.github.io/style.css))

#### [MODIFY] [style.css](file:///home/s.lopezmedina/Documents/Aleinad07.github.io/style.css)

- Eliminar bloque de estilos `.volunteering-section`, `.volunteer-grid`, `.volunteer-card`, etc. (líneas ~542-593)
- Eliminar estilos de `.github-section` (líneas ~676-732)

### JS ([script.js](file:///home/s.lopezmedina/Documents/Aleinad07.github.io/script.js))

Sin cambios necesarios — el JS es genérico (reveal animations, navbar, lightbox, smooth scroll).

## Verificación

### Verificación visual con navegador
- Abrir el sitio localmente y verificar que cada sección muestra los datos correctos de Daniela, el texto está en español, y las secciones de voluntariado y GitHub fueron removidas.
