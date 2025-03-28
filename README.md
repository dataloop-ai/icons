# **icons**

[![icons version](https://img.shields.io/npm/v/@dataloop-ai/icons?label=Latest%20Library%20Version)](https://www.npmjs.com/package/@dataloop-ai/icons)

A comprehensive icon pack developed by Dataloop, containing SVG and font-based icons optimized for easy integration into web projects.

📚 [Icon Library Documentation](https://dataloop-ai.github.io/icons/)

---

## **Table of Contents**

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
  - [CSS Font Icons](#css-font-icons)
  - [SVG Icons](#svg-icons)
- [Development](#development)
- [Troubleshooting](#troubleshooting)
- [Security Guidelines](#security-guidelines)

---

## **Overview**

`icons` is an open-source, standardized icon set specifically created for seamless integration into Dataloop applications and other web-based projects. Icons are provided both as SVG assets and as icon fonts, generated using [Icomoon](https://icomoon.io/) for flexibility and ease of use.

---

## **Prerequisites**

- **Node.js** (v14+ recommended)
- **npm** (v6+ recommended)
- **Git**

---

## **Installation**

Install the icons package via npm from the public NPM registry:

```bash
npm i @dataloop-ai/icons
```

---

## **Usage**

You can use the icons in your project in two primary ways:

### **CSS Font Icons**

Load the CSS file to use icon fonts in your project:

```js
import '@dataloop-ai/icons/style.css'
```

Then easily reference icons using the provided class names:

```html
<i class="icon-dl-dot"></i>
```

### **SVG Icons**

Directly reference SVG icons in your HTML:

```html
<img src="node_modules/@dataloop-ai/icons/assets/ai.svg" alt="AI Icon" />
```

Or you can import and use SVG files dynamically in your frontend JavaScript or frameworks like React.

---

## **Development**

### **Project Structure**

```
icons/
├── assets/            # SVG icons
├── fonts/             # Generated font files
├── style.css          # Icon fonts CSS
├── package.json       # npm dependencies and package info
└── README.md          # Documentation
```

### **Adding New Icons**

- Add new SVG files into the `assets/` directory.
- Use [Icomoon](https://icomoon.io/) to regenerate font files and CSS.
- Update the documentation to include the new icons.

---

## **Troubleshooting**

- **Icons Not Loading:**
  - Ensure the correct import of CSS or SVG files.
  - Check file paths if using SVG directly from `node_modules`.

- **CSS Issues:**
  - Clear browser cache and reload the CSS file.

---

## **Security Guidelines**

- ❌ Avoid committing sensitive or proprietary icons.
- 📌 Ensure icons used are appropriately licensed for your use.
- 🔍 Regularly update icon dependencies and regenerate font files when needed.

---

## **Repository Governance**

This repository is governed according to our established guidelines to ensure consistency, security, and efficiency.

#### 1. Quarterly Reviews
Regular audits to verify repository activity, permissions, compliance, and health.

#### 2. Deprecation Process
Inactive or redundant repositories (no commits for 6+ months) are proposed for archival with stakeholder notification and a feedback period.

#### 3. Public/Private Evaluation
Annual assessments or upon significant changes, evaluating security, intellectual property, and compliance implications.

For repository issues or suggestions, please use the dedicated Slack channel (`#github-repo-governance`) or raise a ticket in the Repository Governance Jira board.

For detailed information, please see the [Repository Governance Document](https://dataloop.atlassian.net/wiki/spaces/DG/pages/1342799902/Git+Repository+Governance+Process?force_transition=34c5fc5b-725f-4d3e-8687-06e76a169d5e) or contact the DevOps Team.