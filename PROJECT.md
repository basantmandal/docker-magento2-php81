# Project AI Instructions

This file contains instructions for AI assistants on how to format, structure, and maintain documentation (specifically `README.md` files) for this project and any related modules to ensure consistency.

## Project Contact Information (AUTO-DETECTED)

The following contact information has been pre-configured for this project:

| Type | Value |
| :--- | :--- |
| **Author Name** | Basant Mandal |
| **Website** | <https://www.basantmandal.in/> |
| **LinkedIn** | <https://www.linkedin.com/in/basantmandal/> |
| **GitHub** | (Auto-detect from repository) |
| **Email** | <support@basantmandal.in> |

> 💡 **AI Note:** Always use these values when generating documentation templates. If any value is missing, use placeholders with `{{VARIABLE}}` format.

## Automated Discovery Protocol

Before executing any documentation tasks, AI assistants MUST perform the following automated discovery:

### 1. Contact Information Detection (Priority Order)

| Field | Source | Action |
| :--- | :--- | :--- |
| **Author Name** | Hardcoded: `Basant Mandal` | ALWAYS use this exact value |
| **Website URL** | Hardcoded: `https://www.basantmandal.in/` | ALWAYS use this exact value |
| **LinkedIn URL** | Hardcoded: `https://www.linkedin.com/in/basantmandal/` | ALWAYS use this exact value |
| **Email Address** | Hardcoded: `support@basantmandal.in` | ALWAYS use this exact value |
| **GitHub Repository** | Auto-detect from `git remote` ONLY | This is the ONLY field that can be auto-detected |

### 2. Badge Auto-Generation Rules

When generating shields.io badges, follow this exact pattern:

**Core Badges (always include):**

```markdown
<img src="https://img.shields.io/badge/version-{{VERSION}}-blue?style=flat-square" alt="Version">
<img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white" alt="Docker">
<img src="https://img.shields.io/badge/license-{{LICENSE}}-green?style=flat-square" alt="License">
```

**Author Contact Badges (always include):**

```markdown
<a href="{{WEBSITE_URL}}"><img src="https://img.shields.io/badge/Website-000?style=flat-square&logo=ko-fi&logoColor=white" alt="Website"></a>
<a href="{{LINKEDIN_URL}}"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
```

**Optional Badges (detect and add if applicable):**

- GitHub: `https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github`
- Email: `https://img.shields.io/badge/Email-{encoded}-blue?style=flat-square&logo=gmail`
- Twitter/X: `https://img.shields.io/badge/Twitter-1DA1F2?style=flat-square&logo=twitter`
- Packagist: `https://img.shields.io/packagist/dt/{vendor}/{repo}?style=flat-square`

### 3. Missing Contact Handler

If any critical contact information is missing, AI MUST:

1. **Add a prominent warning block at the top of the README:**

```markdown
> ⚠ **CONFIGURATION REQUIRED:** The following information needs to be manually added:
> - {{MISSING_FIELD}} - [Instructions on where to find/add this]
```

1. **Use HTML comments to mark placeholders:**

```html
<!-- REPLACE_WITH_ACTUAL_EMAIL -->
<a href="mailto:{{CONTACT_EMAIL}}"><img src="..."></a>
<!-- END_REPLACE -->
```

1. **Create a placeholder summary at the end of the file:**

```markdown
<!-- PLACEHOLDER SUMMARY - REPLACE BEFORE PRODUCTION:
{{CONTACT_EMAIL}} -> Set in composer.json authors.email or git config
{{GITHUB_REPO_URL}} -> Set git remote origin
{{VERSION}} -> Update based on release tags
{{LICENSE}} -> Verify LICENSE file exists
-->
```

### 4. Automated Validation Checklist

Before completing any documentation task, AI MUST verify:

- [ ] All URLs are valid and use HTTPS where available
- [ ] LinkedIn URL follows pattern: `https://www.linkedin.com/in/[username]/`
- [ ] Website URL is accessible (200 OK response)
- [ ] Badge links point to working shields.io endpoints
- [ ] License file exists and matches declared license
- [ ] All internal documentation links resolve (README.md, CONTRIBUTING.md, LICENSE.md, etc.)
- [ ] Docker version badge matches actual docker-compose.yml version
- [ ] Port numbers in documentation match docker-compose.yml exposed ports

## AI Instruction Section

Whenever an AI assistant is asked to maintain or review documentation for this repository, it MUST execute the following workflow:

1. **Use Hardcoded Values:** Always use the hardcoded email (`support@basantmandal.in`), LinkedIn (`https://www.linkedin.com/in/basantmandal/`), website (`https://www.basantmandal.in/`), and author name (`Basant Mandal`). Do not search elsewhere.

2. **Verify & Create:** Check if `.github/CONTRIBUTING.md`, `.github/PULL_REQUEST_TEMPLATE.md`, `SECURITY.md`, `.github/ISSUE_TEMPLATE/bug_report.yml`, and `.github/workflows/release.yml` exist.
   - If they exist: Remove all contents and update them with the formats defined below
   - If they do not exist: Create them using the formats defined below
   - Always use hardcoded contact information in all templates

3. **Verify & Update:** Review the existing `README.md` file.
   - If it exists: Refactor it to match the exact structure defined below, replacing any incorrect contact information with hardcoded values
   - If it does not exist: Create it following the structure below
   - Preserve any working technical content (features, requirements, installation steps) while ensuring contact sections use hardcoded values

4. **Badge Verification:** Ensure all contact badges (Website, LinkedIn, Email) are present in both header and footer of `README.md`, using hardcoded URLs and email and use the correct style (`style=flat-square`).

## README.md Formatting Guidelines (MANDATORY STRUCTURE)

When creating or updating `README.md` files, AI MUST follow this EXACT structure and styling - no deviations:

### 1. Centered Header

The file must start with a centered header using `<div align="center">`.

- **Title:** `<h1>` or `#` tag with the module name.
- **Subtitle:** A single line bold description of what the module does.
- **Badges/Shields:** A set of standardized shields from shields.io. At minimum:
  - Version (e.g., `version-3.0.0`)
  - Magento Version (e.g., `Magento-2.4.x`)
  - PHP Version (e.g., `PHP-8.2+`)
  - License (e.g., `license-OSL--3.0`)
- **Author Links:** Secondary row of flat-square badges for Website, LinkedIn, Packagist, etc.
- Always close the centered div before starting the content.

> ⚠ **AI Constraint:** Maintain exact spacing, line breaks, and badge order. Only update version numbers, URLs, and project-specific text.

### 2. Section Separator

Always use `---` with empty lines before and after:

```markdown

---

## 📄 Overview 
```

### 3. Required Sections (In Exact Order)

AI MUST include ALL these sections in this exact sequence:

| Order | Section | Required |
| :--- | :--- | :--- |
| 1 | `## 📄 Overview` | ✅ Always |
| 1a | `### 👥 Who is this for?` | ✅ Always |
| 2 | `## ✨ Key Features` | ✅ Always |
| 3 | `## 📋 System Requirements` | ✅ Always |
| 4 | `## 🚀 Installation` | ✅ Always |
| 5 | `## ⚙️ Configuration` | ✅ Always |
| 6 | `## 🎯 Demo Pages` | ⚠️ If applicable |
| 7 | `## 🔒 Content Security Policy (CSP)` | ✅ Always |
| 8 | `## 🔐 Privacy & GDPR` | ✅ Always |
| 9 | `## 📚 Documentation` | ✅ Always |
| 10 | `## ⚠️ Known Limitations` | ✅ Always |
| 11 | `## 🤝 Contributing` | ✅ Always |
| 12 | `## 📄 License` | ✅ Always |
| 13 | `## ⚖️ Disclaimer` | ✅ Always |

### 4. Standard Section Templates

**Overview Section:**

```markdown
## 📄 Overview 

[2-3 sentence description of what the project does]

### 👥 Who is this for?
- [Target audience 1]
- [Target audience 2]
- [Target audience 3]
```

**Key Features Section:**

```markdown
## ✨ Key Features

| Feature | Details |
| :--- | :--- |
| 💻 **[Feature Name]** | [Description] |
| 🔐 **[Feature Name]** | [Description] |
| 📦 **[Feature Name]** | [Description] |
| 🧱 **[Feature Name]** | [Description] |
```

**System Requirements:**

```markdown
## 📋 System Requirements

| Requirement | Minimum Version |
| :--- | :--- |
| **[Service Name]** | [Version] |
| **[Service Name]** | [Version] |

> ⚠ **Note:** [Any warnings or special notes]
```

**Installation:**

```markdown
## 🚀 Installation

### [Method Name — Recommended]
[Instructions with bash code blocks]

### Manual Installation

**1. Prerequisites**
[Step 1]

**2. Configuration**
[Step 2]

**3. Start Services**
[Step 3]

> ⚠ **Security Warning:** [Any security notes]
```

**Configuration:**

```markdown
## ⚙️ Configuration

| Service | Version | Purpose |
| :--- | :--- | :--- |
| **[Service]** | [Version] | [Purpose] |
```

**Documentation:**

```markdown
## 📚 Documentation

| Document | Purpose |
| :--- | :--- |
| [**DOCUMENT_NAME**](LINK) | [Description] |
```

### 5. Centered Footer (Copy Exactly)

```markdown
<div align="center">
  <b>Basant Mandal</b><br>
  <i>Full Stack Developer</i><br><br>

  <a href="https://www.basantmandal.in/"><img src="https://img.shields.io/badge/Website-000?style=flat-square&logo=ko-fi&logoColor=white" alt="Website"></a>
  <a href="https://www.linkedin.com/in/basantmandal/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
  
  <br>

  ---
  > *Copyright © {{CURRENT_YEAR}} Basant Mandal. All rights reserved.*
</div>
```

> ⚠ **AI Note:** Auto-calculate `{{CURRENT_YEAR}}` as the current year at generation time.

## GitHub Community Health Files

### 1. `.github/CONTRIBUTING.md`

- **Centered Header:** Start with a centered header using `<div align="center">`. Include an `<h1>` or `#` title (e.g., `# Contributing to [Module Name]`), a bold subtitle, and standard badges. Close the centered div before the content.
- **Standard Sections (in order):** Use `---` as horizontal rules between sections and standard emojis in `<h2>` headers.
  - **👋 Introduction:** Welcome message for contributors.
  - **🐛 Reporting Bugs:** Guidelines and templates for issue reporting.
  - **💡 Suggesting Enhancements:** Guidelines for feature requests.
  - **🛠️ Pull Requests:** Step-by-step process for opening, reviewing, and merging PRs.
  - **🧑‍💻 Coding Standards:** Mention Magento 2 specific coding standards (e.g., PHPCS, MEQP).
- **Typography & Styling:** Follow the same typography and styling rules as the `README.md`.
- **Centered Author Footer:** End the file with the same centered author footer block used in the `README.md`.

### 2. `.github/PULL_REQUEST_TEMPLATE.md`

- **Structure:** Use clean markdown lists, checkboxes, and clear headings with standard emojis.
- **Standard Sections (in order):**
  - **📝 Description:** A text area or prompt for describing the changes in detail.
  - **🔗 Related Issues:** A prompt to link to specific GitHub issues (e.g., `Fixes #...`).
  - **📋 Type of Change:** A markdown checklist (e.g., `[ ] 🐛 Bug fix`, `[ ] ✨ New feature`, `[ ] 💥 Breaking change`, `[ ] 📚 Documentation`).
  - **🧪 How Has This Been Tested?:** A section for the submitter to explain their testing environment and steps.
  - **✅ Checklist:** A markdown checklist to ensure PR quality (e.g., `[ ] My code follows the style guidelines`, `[ ] I have performed a self-review`, `[ ] I have updated the documentation`).
- **Helper Text:** Use HTML comments (`<!-- ... -->`) for any instructional text meant for the PR submitter so it doesn't appear in the final rendered PR description.

### 3. `SECURITY.md`

- **Location:** Must be placed in the root directory (`SECURITY.md`).
- **Structure:** Use clean markdown with standard emojis.
- **Standard Sections (in order):**
  - **Supported Versions:** A table listing version, status, and support level (e.g., Latest stable, Previous major, EOL).
  - **Reporting a Vulnerability:** Clear instructions on how to report privately via email (`support@basantmandal.in` and `security@basantmandal.in`), what details to include, and the expected response timeline.
  - **What to Expect:** A step-by-step disclosure and patching timeline, and a confidentiality statement.
  - **Scope:** A list of what is and isn't covered by the security policy.
  - **Security Best Practices for Users:** Examples of environment configuration (e.g., `.env`), network security (e.g., UFW rules), and regular updates.
  - **Contact Information:** A table with purposes and corresponding email contacts.
  - **Acknowledgment:** A brief thank you to the security community.
- **Centered Author Footer:** End the file with a standard author block with website, email, and LinkedIn badges. Always use the hardcoded contact information.

### 4. `.github/ISSUE_TEMPLATE/bug_report.yml`

- **Structure:** Use GitHub Issue Form YAML format (`.yml`).
- **Required Top-Level Fields:**
  - `name`: "Bug Report"
  - `description`: "Report a bug to help us improve the project."
  - `title`: "[Bug]: "
  - `labels`: `["bug"]`
- **Body Elements (in order):**
  - `markdown`: A welcoming message for reporting bugs.
  - `input`: Project-specific inputs (e.g., System Version, Environment Version, Script Version) as required fields.
  - `dropdown`: For selectable options like Environment (Local, Development, Staging, Production), OS, or Architecture.
  - `textarea`: Sections for Bug Description, Steps to Reproduce, Expected Behavior, Actual Behavior, Logs/Error Output (rendered as `shell`), and Screenshots.
- **Validation:** Ensure `validations:` are configured correctly with `required: true` for essential fields to prevent incomplete bug reports.

## GitHub Workflows

### 1. `.github/workflows/release.yml`

- **Purpose:** Automate the semantic versioning and release process.
- **Triggers:** Must trigger `on: push` to the `main` branch.
- **Permissions:** Must have `write` permissions for `contents`, `issues`, and `pull-requests`.
- **Jobs & Steps (in order):**
  - **Job:** `release` running on `ubuntu-latest`.
  - **Checkout:** Use `actions/checkout@v4` with `fetch-depth: 0` to ensure all tags are fetched.
  - **Setup Node:** Use `actions/setup-node@v4` with `node-version: 20`.
  - **Install Dependencies:** Install semantic-release and its plugins using `npm install --no-save semantic-release @semantic-release/commit-analyzer @semantic-release/release-notes-generator @semantic-release/changelog @semantic-release/git @semantic-release/github`.
  - **Run semantic-release:** Execute `npx semantic-release` and provide `GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}` in the environment.

## Quick Reference Card for AI

| Task | Action |
| :--- | :--- |
| **Author Name** | Always use "Basant Mandal" |
| **Website** | Always use "<https://www.basantmandal.in/>" |
| **LinkedIn** | Always use "<https://www.linkedin.com/in/basantmandal/>" |
| **Badge Style** | Always `?style=flat-square` |
| **Footer Format** | Copy exactly from Section 5 |
| **Header Format** | Copy exactly from Section 1 |
| **Missing Email** | Use `{{CONTACT_EMAIL}}` placeholder |
| **Missing GitHub** | Use `{{GITHUB_REPO_URL}}` placeholder |
| **Year in Footer** | Auto-calculate current year |

---

> ✅ **AI Verification:** Before finalizing any documentation, confirm all contact badges match the pre-configured values above and the structure exactly matches the reference README provided by the user.
