# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the website for **Project CREDIBLE** (Creatively Reimagining Engagement With Data in Biology Learning Environments), an NSF-funded STEM education research project. The website is built using Quarto and published to GitHub Pages at projectcredible.com.

## Technology Stack

- **Quarto**: Static site generator for creating the website from `.qmd` (Quarto Markdown) files
- **R/RStudio**: Development environment (evidenced by `.Rproj` file)
- **Output**: Static HTML website generated to the `docs/` directory
- **Deployment**: GitHub Pages (hosted from `docs/` directory)

## Build and Development Commands

### Rendering the Website

```bash
# Render the entire website (builds all .qmd files to docs/)
quarto render

# Preview the website with live reload
quarto preview

# Render a single page
quarto render index.qmd
quarto render about.qmd
```

### Project Structure

- **`_quarto.yml`**: Main configuration file defining website structure, navigation, theme (flatly), and output directory
- **`*.qmd` files**: Source content files in Quarto Markdown format
  - `index.qmd`: Homepage with project overview and mission
  - `about.qmd`: Comprehensive page with mission, team, partners, advisory board, and FAQs
  - `contact.qmd`: Contact information
  - `class-2025-26.qmd`: Current educator network resources
  - `teacher-leaders.qmd`: Teacher leader bios
  - `cohort-1.qmd`: Archived past cohort resources (linked in footer)
  - `abc.qmd`: ABCs of Data framework and resources
  - `tools-and-resources.qmd`: Additional teaching tools
  - `news.qmd`: News and events
  - `get-involved.qmd`: How to join or contribute to the project
- **`docs/`**: Build output directory (contains generated HTML, committed to git for GitHub Pages)
- **`images/`**: Image assets referenced in content
- **`styles.css`**: Custom CSS for site styling

## Key Website Architecture

The website uses Quarto's website project type with:

1. **Navigation**: Defined in `_quarto.yml` with left navbar containing:
   - Home
   - About
   - "Educator Network" dropdown menu (2025-26 Class, Teacher Leaders, ABCs of Data, Tools)
   - News & Events
   - Get Involved
   - Contact
   - Footer with link to past cohorts

2. **Theme**: Uses the "flatly" Bootstrap theme with custom CSS

3. **Output Formats**:
   - Primary: HTML with table of contents
   - Secondary: PDF output configured with XeLaTeX engine

4. **Output Directory**: All rendered content goes to `docs/` which is served by GitHub Pages

## Content Editing Workflow

When editing content:
1. Modify the relevant `.qmd` file
2. Run `quarto render` to rebuild the site
3. Check the generated HTML in `docs/` directory
4. Commit both the source `.qmd` file and generated `docs/` files

## Important Notes

- The `docs/` directory is tracked in git (not gitignored) because it's used for GitHub Pages deployment
- `.Rproj.user/`, `.Rhistory`, `.RData`, `.Ruserdata`, and `.quarto/` are gitignored
- The website URL is projectcredible.com (custom domain configured via CNAME)
- **CNAME file**: The `CNAME` file in the project root is automatically copied to `docs/` during rendering (configured in `_quarto.yml` under `project.resources`). This prevents the custom domain from being reset after each deployment.
- This is an NSF-funded educational research project (Grant No. 2239152)
