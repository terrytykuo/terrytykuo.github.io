# AI Agent Architecture Guide & Codebase Map

> [!IMPORTANT]
> **Living Document**: This file is an indexing map for AI Agents. If you (an AI) had to use complex methods (grep, cat, python scripts) to understand the codebase or find a file, **YOU MUST UPDATE THIS FILE** with the convenient paths and logic you discovered. Save the next agent the trouble!

## 🚨 Critical Architecture Rules
This repository uses a generation/build pattern. Standard Jekyll folders in the root are **artifacts**, not source files.

| Directory | Status | Action | Source of Truth |
| :--- | :--- | :--- | :--- |
| `_data/` | 🚫 **GENERATED** | **DO NOT EDIT** | `content/*.yml` |
| `_includes/` | 🚫 **GENERATED** | **DO NOT EDIT** | `template/_includes/` |
| `_layouts/` | 🚫 **GENERATED** | **DO NOT EDIT** | `template/_layouts/` |
| `content/` | ✅ **SOURCE** | **EDIT HERE** | N/A |
| `template/` | ✅ **SOURCE** | **EDIT HERE** | N/A |

> [!WARNING]
> Tools like `view_file` or `find_by_name` might fail on generated files because they are in `.gitignore`. Use `run_command` with `cat <path>` if you strictly need to read a generated artifact, but you generally should be reading/editing the **Source of Truth** files instead.

## 🗺️ Component & File Map

### 1. Content & Data (`content/`)
Edit these files to update the text, links, or lists on the website.
*   **Personal Profile**: `content/profile.yml`
    *   *Usage*: `site.data.profile` in Liquid.
    *   *Fields*: Name, summary, social links, phone, location.
*   **Experience**: `content/experience.yml`
    *   *Usage*: `site.data.experience` in Liquid.
*   **Projects**: `content/projects.yml`
    *   *Usage*: `site.data.projects` in Liquid.
*   **Education**: `content/education.yml`
*   **Skills**: `content/skills.yml`
*   **Certifications**: `content/certifications.yml`
*   **Community/Talks**: `content/community.yml`

### 2. Structure & Layouts (`template/`)
Edit these files to change the HTML structure or CSS styles.
*   **Main Page Layout**: `template/_layouts/portfolio.html`
    *   *Description*: The main single-page portfolio layout. Iterates over data files to render sections.
*   **Head & Styles**: `template/_includes/head.html`
    *   *Description*: Contains HTML `<head>` content AND **Custom CSS Overrides** (`<style>...`).
    *   *Note*: Look here for `topnav`, `sidebar` overrides, and custom color variables.
*   **Navigation Bar**: `template/_includes/topnav.html`
    *   *Description*: The top navigation bar implementation.

### 3. Configuration
*   **Site Config**: `_config.yml` (Root)
    *   *Description*: Standard Jekyll config. Title, specific SEO settings, and plugin configurations.

## 🛠️ Contribution Guidelines (for AI Agents)
**When to update this file:**
1.  **Hard-to-find files**: If you had to search multiple directories to find where a component is defined.
2.  **Hidden dependencies**: If modifying File A required also modifying File B (e.g., a data file and its corresponding template).
3.  **Complex Data Flow**: If you discovered a non-standard way data is injected (like the `content/` -> `_data/` generation flow).

**How to update:**
*   Add a new row to the table or list above.
*   Use `[NEW]` or `[UPDATE]` annotations in your PR/Commit to signal the change.
