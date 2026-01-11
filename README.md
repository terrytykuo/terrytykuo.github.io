# Personal Website Template

> AI-Friendly Personal Portfolio & CV Generator

A modern, structured personal website template designed for AI-assisted content management. Just fill in your content in YAML files, and let AI help you build a professional portfolio.

## Features

- **Structured Data**: All content in YAML files for easy editing
- **AI-Ready**: Designed for AI assistants (see `CLAUDE.md`)
- **Portfolio Focus**: Showcase projects, experience, talks & community
- **One-Click CV**: Generate PDF from structured data
- **GitHub Pages**: Easy deployment with GitHub Actions

---

## Quick Start

### 1. Copy Example Content

```bash
cp -r content.example/* content/
```

### 2. Edit Your Content

Edit the YAML files in `content/` folder:

| File | Description |
|------|-------------|
| `profile.yml` | Name, title, contact info, summary |
| `experience.yml` | Work history |
| `education.yml` | Educational background |
| `skills.yml` | Technical skills |
| `certifications.yml` | Professional certifications |
| `projects.yml` | Side projects & portfolio |
| `community.yml` | Talks, leadership, community involvement |
| `publications.yml` | Papers, articles, books |

### 3. Add Your Assets

Place your files in `content/assets/`:

```
content/assets/
├── projects/      # Project screenshots
├── cv/            # CV PDF files
└── community/     # Community/talk photos
```

### 4. Build & Preview

```bash
# Install dependencies (first time only)
bundle install

# Start development server
./scripts/serve.sh

# Or just build
./scripts/build.sh
```

Open http://localhost:4000 to preview.

---

## Project Structure

```
├── content/              # YOUR CONTENT (edit this!)
│   ├── *.yml             # Your personal data
│   ├── assets/           # Your images & files
│   └── raw/              # Raw materials for AI processing
│
├── content.example/      # Example content for reference
│
├── template/             # Website template (don't edit)
│   ├── _includes/
│   ├── _layouts/
│   ├── _tabs/
│   └── _data/            # Template config (share, contact)
│
├── scripts/              # Build scripts
│   ├── build.sh          # Build static site
│   └── serve.sh          # Development server
│
├── CLAUDE.md             # AI instructions
└── README.md             # This file
```

---

## AI-Assisted Workflow

This template is designed to work with AI assistants. You can:

1. **Import existing resume**: Drop your PDF in `content/raw/` and ask AI to parse it
2. **Generate content**: Ask AI to help write descriptions
3. **Auto-screenshot**: Ask AI to take screenshots of your projects
4. **Review & polish**: AI can help improve your content's wording

See `CLAUDE.md` for detailed AI instructions and YAML schemas.

---

## Website Pages

| Page | Purpose | Data Source |
|------|---------|-------------|
| **Main** | Landing page | `profile.yml` |
| **CV** | Interactive CV with PDF download | All content files |
| **Projects** | Project gallery | `projects.yml` |
| **Talks & Community** | Speaking & leadership | `community.yml` |

---

## Customization

### Changing Theme

Edit `_config.yml` to customize colors and settings.

### Adding New Sections

1. Create a new YAML file in `content/`
2. Add corresponding page in `template/_tabs/`
3. Update navigation in `template/_includes/topnav.html`
4. Update `CLAUDE.md` with the new schema

---

## Deployment

### GitHub Pages

1. Push to GitHub
2. Enable GitHub Pages in repository settings
3. Your site will be live at `https://username.github.io/repo-name`

### Other Platforms

The `_site/` folder contains static HTML that can be deployed to:
- Netlify
- Vercel
- Cloudflare Pages
- Any static hosting

---

## Tech Stack

- **Framework**: Jekyll
- **Theme**: Custom (based on Chirpy)
- **Hosting**: GitHub Pages
- **CI/CD**: GitHub Actions

---

## License

MIT License

---

## Author

Created by [Terry Kuo](https://github.com/terrytykuo)

- **Email**: trrk.dev@gmail.com
- **Location**: Copenhagen, Denmark
