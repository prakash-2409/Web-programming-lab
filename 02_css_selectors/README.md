# EXPERIMENT 2: Webpage with All Types of CSS & CSS Selectors

**Subject:** ML1503 – Web Programming Lab  
**Exam Mark Split-up:** Aim & Algorithm (10) | Program (60) | Output & Result (20) | Viva (10) | Total (100)

---

### Quick 1-Line Curl Commands to Download This Experiment
```bash
# Download HTML file
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/02_css_selectors/index.html
# Download CSS file
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/02_css_selectors/style.css
```

---

## 1. AIM
To design and style a webpage demonstrating the three types of Cascading Style Sheets (Inline, Internal, and External CSS) and various CSS selectors including Universal, Element, ID, Class, and Group selectors.

---

## 2. ALGORITHM
1. Create an external stylesheet file `style.css` containing CSS rules for `.external-box`.
2. Create an HTML file `index.html` and link `style.css` inside the `<head>` using `<link rel="stylesheet" href="style.css">`.
3. Add a `<style>` block in the `<head>` to define internal CSS rules for:
   - Universal Selector (`*`) for global font family and box-sizing.
   - Element Selector (`p`) for paragraph text styling.
   - ID Selector (`#unique-para`) for styling a unique element.
   - Class Selector (`.highlight`) for reusable warning/emphasis styling.
   - Group Selector (`h2, h3`) for applying shared styling across multiple heading tags.
4. Apply Inline CSS directly to the main `<h1>` tag using the `style` attribute.
5. Create HTML markup in the `<body>` referencing the respective classes, IDs, and elements.
6. Open the file in a browser to verify CSS cascade, priority, and styling rules.

---

## 3. HOW TO EXECUTE
Make sure `index.html` and `style.css` are in the same folder.
```bash
# Open in browser
xdg-open index.html || google-chrome index.html || firefox index.html
```

---

## 4. EXPECTED OUTPUT
- **Inline CSS:** Blue background header with centered white bold text.
- **External CSS:** Light green box with dashed green border rendered from `style.css`.
- **Element Selector:** Navy blue paragraphs.
- **ID Selector:** Pale yellow box with dark golden left bar.
- **Class Selector:** Highlighted red badge with rounded borders.
- **Group Selector:** Both `h2` and `h3` rendered in underlined teal text.

---

## 5. RESULT
Thus, a web page demonstrating Inline, Internal, and External CSS along with Universal, Element, ID, Class, and Group selectors was created and verified successfully.

---

## 6. VIVA VOCE QUESTIONS & ANSWERS
1. **Q: What is CSS Specificity / Cascade hierarchy?**  
   *A:* When multiple rules apply to an element, priority is decided by specificity:  
   `Inline style (1000) > ID Selector (100) > Class / Attribute / Pseudo-class (10) > Element / Pseudo-element (1) > Universal (*, 0)`.
2. **Q: What is the main advantage of External CSS over Inline CSS?**  
   *A:* External CSS promotes separation of concerns (content vs presentation), enables site-wide reusability across hundreds of pages, reduces page load times via browser caching, and makes maintenance much simpler.
3. **Q: When should you use an ID selector vs a Class selector?**  
   *A:* An ID selector (`#id`) is strictly unique and should only appear once per HTML document. A Class selector (`.class`) is intended for styling multiple recurring elements across the page.
4. **Q: What is a Group selector in CSS?**  
   *A:* Grouping allows comma-separated selectors (e.g., `h1, h2, p`) to share the same declaration block, avoiding repetitive code.
5. **Q: What does the Universal selector `*` do?**  
   *A:* It matches every single element in the DOM tree, commonly used for CSS resets or global font settings.
