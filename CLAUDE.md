# Personal Website Template - AI Instructions

This is a personal portfolio website template. Users provide their content in the `content/` folder, and AI assists with formatting, organizing, and generating the website.

## Project Structure

```
content/           → User's personal data (YAML files + assets)
template/          → Jekyll website template (do not modify for users)
_site/             → Generated website output
```

## Content Files Schema

### profile.yml
```yaml
name: "Full Name"
title: "Job Title"
email: "email@example.com"
phone: "+1 234 567 890"
location: "City, Country"
summary: "2-3 sentence professional summary"
```

### experience.yml
```yaml
- title: "Job Title"
  company: "Company Name"
  location: "City, Country"
  period: "2020 - Present"
  highlights:
    - "Achievement 1"
    - "Achievement 2"
  projects:  # Optional: for multiple projects within one role
    - name: "Project Name"
      highlights:
        - "Project achievement"
```

### education.yml
```yaml
- degree: "Master of Science"
  field: "Computer Science"
  institution: "University Name"
  period: "2018 - 2020"
```

### skills.yml
```yaml
flat_list:
  - "Python"
  - "TypeScript"
  - "AWS"
```

### certifications.yml
```yaml
- name: "AWS Solutions Architect"
  issuer: "Amazon Web Services"
  year: 2024
```

### projects.yml
```yaml
- name: "Project Name"
  tagline: "One-line description"
  status: "Active"  # or "Completed", "In Development"
  description: "Detailed description in markdown"
  features:
    - "Feature 1"
    - "Feature 2"
  tech_stack:
    backend: ["Python", "FastAPI"]
    frontend: ["React", "TypeScript"]
    infrastructure: ["GCP", "Docker"]
  screenshots:
    - "/assets/img/projects/screenshot1.png"
  links:
    github: "https://github.com/user/repo"
    demo: "https://demo.example.com"
```

### community.yml
```yaml
leadership:
  - title: "Board Member"
    organization: "Organization Name"
    organization_zh: "組織中文名"  # Optional
    period: "2024 - Present"
    description: "Role description"
    highlights:
      - "Achievement 1"
    website: "https://example.org"

talks:
  - title: "Talk Title"
    event: "Event Name"
    date: "2024"
    description: "Talk description"
    highlights:
      - "Key point 1"
    slides_url: "https://slides.com/..."
    video_url: "https://youtube.com/..."
```

### publications.yml
```yaml
- title: "Paper Title"
  journal: "Journal Name"
  year: 2023
  url: "https://doi.org/..."
```

## AI Workflow

When user provides raw content:

1. **Parse raw input** - Extract structured data from:
   - PDF resumes → Parse and populate experience.yml, education.yml
   - LinkedIn exports → Map to appropriate YAML files
   - Unstructured text → Structure into YAML format

2. **Process screenshots** - When user provides project screenshots:
   - Resize to appropriate dimensions (max 800px width)
   - Optimize file size
   - Place in `content/assets/projects/`
   - Update projects.yml with paths

3. **Validate content** - Ensure all YAML files are valid and complete

4. **Generate website** - Run Jekyll build

## Commands for AI

- `jekyll serve` - Preview website locally (http://localhost:4000)
- `jekyll build` - Build static site to `_site/`

## Style Guidelines

- Keep descriptions concise (2-3 sentences max)
- Use action verbs for achievements ("Built", "Designed", "Led")
- Quantify achievements when possible ("Improved performance by 40%")
- Maintain consistent date formats ("2020 - Present" or "Jan 2020 - Dec 2021")

## Languages

- Primary content: English
- Chinese translations: Optional, use `_zh` suffix for fields (e.g., `organization_zh`)
