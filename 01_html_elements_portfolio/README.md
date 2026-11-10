# EXPERIMENT 1: Webpage Using All HTML Elements (Portfolio, Audio & Video)

**Subject:** ML1503 – Web Programming Lab  
**Exam Mark Split-up:** Aim & Algorithm (10) | Program (60) | Output & Result (20) | Viva (10) | Total (100)

---

### Quick 1-Line Curl Command to Download This Experiment
```bash
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/01_html_elements_portfolio/index.html
```

---

## 1. AIM
To design a static webpage (Personal Portfolio) demonstrating all fundamental HTML5 elements including headings, text formatting, hyperlinks, images, unordered and ordered lists, definition lists, tables, audio and video controls, and form elements.

---

## 2. ALGORITHM
1. Start the HTML5 document with `<!DOCTYPE html>`, `<html>`, `<head>`, `<meta charset="UTF-8">`, and `<body>` tags.
2. Add main headings (`<h1>`, `<h3>`) and paragraphs (`<p>`) with text formatting tags (`<b>`, `<i>`, `<u>`, `<mark>`, `<strong>`, `<em>`, `<del>`).
3. Embed an anchor hyperlink (`<a>`) and profile image (`<img>`) with `src`, `alt`, and dimensions.
4. Construct an unordered list (`<ul>`), an ordered list (`<ol>`), and a definition list (`<dl>`, `<dt>`, `<dd>`) to showcase skills and career milestones.
5. Create a structured academic table using `<table>`, `<tr>`, `<th>`, and `<td>` with border and cellpadding.
6. Embed multimedia elements using `<audio controls>` and `<video controls>` with child `<source>` tags.
7. Construct a user interaction `<form>` containing text inputs, email, radio buttons, checkboxes, dropdown select menu, textarea, and submit/reset buttons.
8. Open the file in any standard web browser (Chrome, Firefox, Edge) to verify rendering and functionality.

---

## 3. HOW TO EXECUTE
Simply open `index.html` in your browser:
```bash
# On Linux / Ubuntu
xdg-open index.html
# Or with Google Chrome / Firefox
google-chrome index.html || firefox index.html
```

---

## 4. EXPECTED OUTPUT
- Heading and introductory paragraph styled with bold, italics, underline, and highlight.
- Displayed profile photo and working hyperlinks.
- Numbered and bulleted lists representing career achievements and technical skillsets.
- Academic details neatly aligned inside an HTML border table.
- Functional HTML5 Audio player and Video player with Play, Pause, and Volume controls.
- Contact form allowing user text entry, radio button selection for gender, checkboxes for interests, dropdown for job role, and submission buttons.

---

## 5. RESULT
Thus, the static webpage using all HTML5 elements, media tags (audio/video), and portfolio structure was successfully created and verified.

---

## 6. VIVA VOCE QUESTIONS & ANSWERS
1. **Q: What is the purpose of `<!DOCTYPE html>`?**  
   *A:* It informs the web browser about the version of HTML being used (HTML5 in this case) and ensures the page renders in standards-compliant mode rather than quirks mode.
2. **Q: What is the difference between block-level and inline elements?**  
   *A:* Block-level elements (e.g., `<div>`, `<p>`, `<h1>`, `<table>`) start on a new line and take up the full available width. Inline elements (e.g., `<span>`, `<a>`, `<b>`, `<img>`) do not start on a new line and only take as much width as necessary.
3. **Q: How does the `<audio>` and `<video>` tag differ from older embed methods like Flash?**  
   *A:* HTML5 `<audio>` and `<video>` tags are native browser elements that require no third-party plugins, support hardware acceleration, and can be easily styled and controlled via JavaScript DOM.
4. **Q: What are the mandatory attributes of an `<img>` tag?**  
   *A:* `src` (source path/URL) and `alt` (alternative text for accessibility and screen readers when the image fails to load).
5. **Q: What is the difference between `<ol>` and `<ul>`?**  
   *A:* `<ol>` creates an ordered (numbered or alphabetical) list, while `<ul>` creates an unordered (bulleted) list.
