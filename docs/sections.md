# Available Sections

The `cv` class provides the following environments to organize your CV:

| Environment | Description |
|--------------|----------------------------------------------|
| `Objective` | Your career objective or summary |
| `Education` | Academic history (use `\educationitem`) |
| `Experience` | Work and professional experience (use `\experienceitem`) |
| `Skills` | Skill categories and items (`\skillcategory`, `\skillitem`) |
| `Projects` | Personal or professional projects (`\projectitem`) |
| `Publications` | Academic publications (`\publicationitem`) |

### Example: Adding an Education item

```latex
\educationitem{University}{Location}{Degree}{Years}{Thesis Type}{Title}
```

This adds a single education entry with the specified details.
