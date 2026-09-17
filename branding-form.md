---
title: "University Branding Variables — Approval Form"
subtitle: "Mekelle University — Online MBA — Open edX Teak"
author: "Mekelle University e-Learning Team"
date: "Form version 1.1"
---

# Document Control

| Field | Value |
|---|---|
| Course | MU+MBAD7112+DEV_01 (Project Management) |
| Program | 14-course online MBA, Mekelle University |
| Platform | Open edX Teak |
| Form version | 1.1 |
| Date issued |  |
| Issued by |  |
| Due back by |  |
| Respondent name |  |
| Respondent role |  |

# Instructions

1. Fill in the **Approved Value** column for every row.
2. Do not leave any row blank. If a value is not yet approved, write **PENDING** and add the expected approval date in Notes.
3. For every color value, complete Part C before signing.
4. For `FONT_FAMILY`, attach a license file.
5. For `LOGO_URL`, upload the logo to Studio and enter the resulting `/static/...` path.
6. Return Parts A, B, and C together.

**How to read the Notes column:** each note explains the format expected, gives an example, and flags any policy or accessibility requirement. Follow the format exactly; do not invent new fields.

# Part A — Branding Variables

## Section 1 — Identity

| # | Variable | Purpose | Approved Value | Notes |
|---|---|---|---|---|
| 1 | UNIVERSITY_NAME | Official name |  | Write the full official English name as it appears on the university charter, letterhead, and certificate. Example: `Mekelle University`. Do not use abbreviations here. If the official name includes "The", include it. Confirm with the Office of the President before submitting. |
| 2 | UNIVERSITY_NAME_SHORT | Short form |  | Write the commonly used short name or abbreviation. Example: `MU`. Used in banners and tight layouts where the full name will not fit. If not needed, write `PENDING` and give the date the decision will be made. |
| 3 | LOGO_URL | Primary logo |  | Upload the primary logo to Studio → Content → Files & Uploads, then paste the resulting `/static/...` path here. Example: `/static/mu-logo.svg`. SVG is strongly preferred for scalability. If only PNG is available, use a minimum of 400px width, transparent background. Do not paste external URLs (e.g., a Google Drive link); the file must be hosted in the course. |
| 4 | LOGO_URL_REVERSED | Reversed logo |  | Same as above, but for a light-on-dark version of the logo. Example: `/static/mu-logo-reversed.svg`. Used by the module banner which has a dark background. If the university does not have a reversed variant, write `PENDING` and note whether the primary logo may be placed on a white plate instead. |
| 5 | FAVICON_URL | Favicon |  | Provide the `.ico` or `.png` file path for the browser tab icon. Example: `/static/favicon.ico`. This is usually set at the platform theme level, not per course. If it is theme-level, write `theme-level, not course` and give the value already configured on the platform. |
| 6 | FOOTER_TEXT | Footer copyright |  | Write the exact string that should appear in the footer. Example: `© 2025 Mekelle University. All rights reserved.` Confirm whether the year should be static or dynamic, and whether "All rights reserved" is required by policy. If the footer must include a contact email, write it on a second line. |

## Section 2 — Color Palette

All color values must pass WCAG 2.1 AA. Complete Part C for each.

| # | Variable | Purpose | Approved Hex | Notes |
|---|---|---|---|---|
| 7 | PRIMARY_COLOR | Main brand color |  | Enter the primary brand color as a 6-digit hex code. Example: `#127DAD`. This color is used for headings, table header backgrounds, and the module banner. It must achieve at least 4.5:1 contrast against white text when used as a background (row 7 of Part C checks this). If the university's primary color does not pass AA, provide a darker approved variant for text use. |
| 8 | SECONDARY_COLOR | Secondary accent |  | Enter the secondary brand color. Example: `#82CFF0`. Used for definition callouts and lighter accents. Must pass 3:1 against the note background (`#F5F7FA`) as a non-text element. If not defined, write `PENDING` and note that the primary color will be used. |
| 9 | ACCENT_COLOR | Focus / highlight |  | Enter the accent color used for keyboard focus outlines and important callouts. Example: `#F2A900`. Must pass at least 3:1 against white (focus outline) and against the primary color (important callout on dark backgrounds). Choose a color that is clearly distinguishable from both the primary and secondary colors. |
| 10 | LINK_COLOR | Hyperlink |  | Enter the hyperlink color used inside course content. Example: `#0056B3`. Must pass 4.5:1 against white (normal text) and against `#F5F7FA` (link inside a note). Do not use the primary color unless it passes both checks. Provide a separate value if the primary color is too light for link text. |
| 11 | LINK_HOVER_COLOR | Link hover |  | Enter the color the link changes to on hover or keyboard focus. Example: `#127DAD` (the primary color). This must be different enough from `LINK_COLOR` that users can perceive the change. If you do not want a hover color change, write `same as LINK_COLOR`. |
| 12 | WARNING_COLOR | Warning border |  | Enter the color used for the left border of warning callouts. Example: `#b91c1c`. Must pass 3:1 against white as a non-text element. Used alongside a warning icon and text, so colour alone does not carry the meaning. |
| 13 | SUCCESS_COLOR | Success border |  | Enter the color used for success or confirmation callouts. Example: `#15803d`. Must pass 3:1 against white. Same rules as `WARNING_COLOR`: always used with a label and icon, never colour alone. |
| 14 | TEXT_COLOR | Body text |  | Enter the body text color. Example: `#1f2933`. Must pass 4.5:1 against white and against `#F5F7FA`. Avoid pure black (`#000000`) unless required by policy; it causes visual stress on long passages. |
| 15 | MUTED_TEXT_COLOR | Captions |  | Enter the color used for captions and secondary text. Example: `#52606d`. Must pass 4.5:1 against white. Do not use a lighter grey; it will fail AA. |
| 16 | BORDER_COLOR | Table borders |  | Enter the color used for table and callout borders. Example: `#d9e2ec`. This is a decorative element; AA contrast is not required, but choose a value that is visible on white and on `#F5F7FA`. |

## Section 3 — Typography

| # | Variable | Purpose | Approved Value | Notes |
|---|---|---|---|---|
| 17 | FONT_FAMILY | Body font |  | Enter the CSS font stack for body text. Example: `"Open Sans", Arial, Helvetica, sans-serif`. Always include a generic fallback (`serif`, `sans-serif`, `monospace`). If the primary font is not a system font, attach a licence file to this form. Do not list a font that is not licensed for web embedding. |
| 18 | FONT_FAMILY_HEADING | Heading font |  | Enter the CSS font stack for headings. Example: `"Merriweather", Georgia, serif`. If headings use the same font as body, write `same as FONT_FAMILY` or leave blank. Always include a fallback. |
| 19 | FONT_FAMILY_MONO | Monospace |  | Enter the monospace stack used inside code blocks and the file listings in the recommendation document. Example: `Menlo, Consolas, "Courier New", monospace`. Usually safe to leave at the default; only change if MU has a brand monospace font. |
| 20 | FONT_LICENSE | Font license |  | Select one: `Open Font License`, `Commercial`, `System font`, `Public domain`, or `PENDING`. If commercial, attach the licence PDF and note the number of permitted page views or domains. If the value is PENDING, give the date the licence will be confirmed. |
| 21 | BASE_FONT_SIZE | Base size |  | Enter the base font size for body text. Example: `1rem` (equivalent to 16px). Do not go below 1rem; smaller sizes fail WCAG 2.1 AA for readability. If the university policy specifies a different base, note it and confirm it is at least 16px. |

## Section 4 — Header and Footer

| # | Variable | Purpose | Approved Value | Notes |
|---|---|---|---|---|
| 22 | HEADER_STYLE | Header border |  | Enter the CSS border treatment for content headings. Example: `border-bottom: 2px solid #F2A900`. This applies to headings inside course content, not to the platform header. Use a value from the approved palette. Do not use colours that fail AA as a non-text element against white. |
| 23 | HEADER_LOGO_POSITION | Logo position |  | Select one: `left`, `center`, `right`, or `none`. Example: `left`. This controls where the MU logo appears in the course banner block. The platform header itself is themed separately and is not affected. |
| 24 | FOOTER_LOGO_POSITION | Logo position |  | Select one: `left`, `center`, `right`, or `none`. Example: `right`. Controls the MU logo position in the course footer. The platform footer is themed separately. |
| 25 | FOOTER_LINKS | Footer links |  | List one link per line in the format `Label | URL`. Example: `Privacy policy | https://www.mu.edu.et/privacy`. Include only links that the university has approved for public display. Do not include social media unless policy permits. If no footer links are required, write `none`. |

## Section 5 — Platform and Policy

| # | Variable | Purpose | Approved Value | Notes |
|---|---|---|---|---|
| 26 | OPEN_EDX_VERSION | Platform version | Teak | Pre-filled. Confirm that the production instance is running Teak. If the instance has been upgraded or downgraded, note the exact version string reported by `tutor --version` or the Studio footer. Do not change without confirming with the Open edX expert. |
| 27 | COURSE_WIDE_CSS_ENABLED | Course-wide CSS |  | Select one: `Yes`, `No`, or `PENDING`. In Teak this is controlled by `Studio → Settings → Advanced Settings → course_wide_css`. If `Yes`, the common CSS can be applied per course. If `No`, styling must be applied through the platform theme, which requires administrator action. Give the name of the person who confirmed the value. |
| 28 | BRAND_GUIDELINES | Brand document |  | Provide a URL or file path to the official MU brand guidelines. Example: `https://www.mu.edu.et/brand/guidelines-2025.pdf`. If the document has not been published, attach a PDF to this form and write `attached, v1.0`. This is required before the final CSS is produced. |
| 29 | CONSTRAINTS | IT / a11y policy |  | Select the target accessibility standard: `WCAG 2.1 AA`, `WCAG 2.1 AAA`, or `WCAG 2.2 AA`. If MU policy specifies a different standard, write it and cite the policy document. Also note any constraints on file size, bandwidth, or offline use. |
| 30 | IFRAME_POLICY | Iframe policy |  | Select one: `Allowed`, `Disallowed`, or `Allow-list only`. If `Allow-list only`, provide the list of approved domains, one per line. Example: `media.courses.ethernet.edu.et`. This affects whether video_iframe XBlocks can remain in the course or must be migrated to standard video components. |
| 31 | CDN_POLICY | CDN policy |  | Select one: `Allowed`, `Disallowed`, or `Allow-list only`. If `Allow-list only`, list the approved CDNs. This affects whether fonts or images may be loaded from external servers. If disallowed, all assets must be self-hosted in the course's static folder. |
| 32 | LOGO_USAGE_POLICY | Logo usage |  | Describe where the MU logo may and may not appear. Example: `Logo permitted on course banners, certificates, and the about page. Not permitted on internal navigation, login screens, or user-generated content.` If MU has a formal logo policy document, reference it here. |

## Section 6 — Publication Metadata

| # | Variable | Purpose | Approved Value | Notes |
|---|---|---|---|---|
| 33 | COURSE_CATALOG_VISIBILITY | Catalog visibility |  | Select one: `Public`, `Private`, or `Both`. Example: `Both`. `Public` means the course appears in the public catalog and is searchable. `Private` means it is visible only to enrolled learners. `Both` means it has a public about page but restricted content. Confirm the choice with the e-Learning Director. |
| 34 | CERTIFICATE_LOGO | Certificate logo |  | Provide the URL of the logo used on course completion certificates. Example: `/static/mu-certificate-logo.png`. If the same logo is used as the primary logo, write `same as LOGO_URL`. If certificates are issued by a partner institution, note the partner logo requirement here. |
| 35 | PUBLICATION_APPROVER | Publication approver |  | Write the role (not the person's name) that has authority to approve publication. Example: `E-Learning Director`. This is the sign-off role per Roadmap Phase 8. Confirm the delegation in writing if the role is held by a committee. |
| 36 | BRANDING_APPROVER | Branding approver |  | Write the role that approves the branding values and the final CSS. Example: `Director of Communications`. Per Roadmap Phase 4, this approval is a gate before the branding is applied to any course. |

# Part B — Declarations

## Respondent

| | | | |
|---|---|---|---|
| Name |  | Role |  |
| Department |  | Date |  |
| Email |  | Signature |  |

## Branding Approval

| | | | |
|---|---|---|---|
| Name |  | Role |  |
| Department |  | Date |  |
| Signature |  | |  |

## Accessibility Approval

| | | | |
|---|---|---|---|
| Name |  | Role |  |
| Department |  | Date |  |
| Signature |  | |  |

## IT / ICT Confirmation

| | | | |
|---|---|---|---|
| Name |  | Role |  |
| Department |  | Date |  |
| Signature |  | |  |

## Attachments Checklist

- [ ] Brand guidelines attached
- [ ] Logo files uploaded to Studio
- [ ] Font license attached
- [ ] Contrast worksheet completed
- [ ] IT policy confirmation attached

# Part C — Contrast Validation Worksheet

Standard: WCAG 2.1 AA. Normal text minimum 4.5:1. Large text minimum 3:1. Non-text minimum 3:1.

| # | Usage | Foreground | Background | Ratio | Pass? | Notes |
|---|---|---|---|---|---|---|
| 1 | Body text on white | TEXT_COLOR | #FFFFFF |  |  | Minimum 4.5:1. Test the approved `TEXT_COLOR` value. Example: `#1f2933` on `#FFFFFF` gives 14.5:1 (pass). |
| 2 | Body text on note bg | TEXT_COLOR | #F5F7FA |  |  | Minimum 4.5:1. Note background is the light grey used in callouts. Example: `#1f2933` on `#F5F7FA` gives 13.8:1 (pass). |
| 3 | Link on white | LINK_COLOR | #FFFFFF |  |  | Minimum 4.5:1. Test the approved `LINK_COLOR`. Example: `#0056B3` on `#FFFFFF` gives 7.0:1 (pass). |
| 4 | Link on callout | LINK_COLOR | #F5F7FA |  |  | Minimum 4.5:1. Same link colour tested against the callout background. |
| 5 | Heading on white | PRIMARY_COLOR | #FFFFFF |  |  | Minimum 4.5:1. Test the approved `PRIMARY_COLOR`. Example: `#127DAD` on `#FFFFFF` gives 4.6:1 (pass, borderline). |
| 6 | Heading on callout | PRIMARY_COLOR | #F5F7FA |  |  | Minimum 4.5:1. If the primary color fails, provide a darker heading-only variant. |
| 7 | Table header text | #FFFFFF | PRIMARY_COLOR |  |  | Minimum 3:1 for large text. White text on the primary color background. Test against the approved `PRIMARY_COLOR`. |
| 8 | Caption text | MUTED_TEXT_COLOR | #FFFFFF |  |  | Minimum 4.5:1. Test the approved `MUTED_TEXT_COLOR`. Example: `#52606d` on `#FFFFFF` gives 7.6:1 (pass). |
| 9 | Focus outline | ACCENT_COLOR | #FFFFFF |  |  | Minimum 3:1 non-text. Test the approved `ACCENT_COLOR`. Example: `#F2A900` on `#FFFFFF` gives 2.2:1 (FAIL). Choose a darker accent if the ratio is below 3. |
| 10 | Warning border | WARNING_COLOR | #FFFFFF |  |  | Minimum 3:1 non-text. Example: `#b91c1c` on `#FFFFFF` gives 6.4:1 (pass). |
| 11 | Success border | SUCCESS_COLOR | #FFFFFF |  |  | Minimum 3:1 non-text. Example: `#15803d` on `#FFFFFF` gives 5.9:1 (pass). |
| 12 | Definition callout | SECONDARY_COLOR | #F5F7FA |  |  | Minimum 3:1 non-text. Example: `#82CFF0` on `#F5F7FA` gives 1.5:1 (FAIL). Choose a darker secondary colour if the ratio is below 3. |

Verified by (accessibility reviewer): ____________________

Signature: ____________________  Date: ____________________

Effective date: ____________________  Next review date: ____________________

---

## How to check contrast

Two approved methods. Use either.

**Method 1 — WebAIM Contrast Checker (recommended for manual verification)**

1. Open https://webaim.org/resources/contrastchecker/.
2. Enter the foreground and background colours.
3. Read the ratio and pass/fail result.
4. Copy the ratio into the worksheet.

**Method 2 — Script (recommended for reproducible verification)**

1. Save the approved colour values to `branding.json`.
2. Run `python3 scripts/check_contrast.py branding.json`.
3. The script prints each ratio and exits with code 0 if all pass.

Example `branding.json`:

```json
{
  "TEXT_COLOR": "#1f2933",
  "MUTED_TEXT_COLOR": "#52606d",
  "PRIMARY_COLOR": "#127DAD",
  "SECONDARY_COLOR": "#82CFF0",
  "ACCENT_COLOR": "#F2A900",
  "LINK_COLOR": "#0056B3",
  "WARNING_COLOR": "#b91c1c",
  "SUCCESS_COLOR": "#15803d"
}