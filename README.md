# 🌐 ML1503 – Web Programming Laboratory
### Complete Practical Exam Study Guide, Ready-to-Run Programs & 1-Line Curl Commands

[![GitHub License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Subject Code](https://img.shields.io/badge/Subject-ML1503%20Web%20Programming-brightgreen.svg)]()
[![Tested On](https://img.shields.io/badge/Status-100%25%20Exam%20Verified-success.svg)]()

This repository contains clean, modular, and verified code for all experiments and split-up practical exam questions in **ML1503 Web Programming Lab**.

Every program is organized into its own dedicated folder with:
- `index.html` / `.js` (Full Working Code)
- `README.md` (Aim, Algorithm, Expected Output, and Viva Q&A)
- Offline fallbacks (Embedded SVG and bundled `angular.min.js` so everything works in labs without internet)

---

## ⚡ Instant Setup on Any Lab Computer (1-Line Command)

Open terminal on any computer (Linux, Ubuntu, Mac, or Windows Git Bash) and run:

```bash
curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/download.sh | bash
cd Web-programming-lab
```
*This downloads and extracts all experiments and assets into a ready-to-run folder in seconds!*

---

## 📂 Laboratory Experiments Index

| Exp # | Experiment Title | Folder | Direct Curl Command | Run Command |
|:---:|:---|:---|:---|:---|
| **1** | **All HTML Elements & Portfolio** (Audio, Video, Table, Form) | [`01_html_elements_portfolio`](./01_html_elements_portfolio/) | `curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/01_html_elements_portfolio/index.html` | Open `index.html` in browser |
| **2** | **CSS Types & Selectors** (Inline, Internal, External, Universal, ID, Class, Group) | [`02_css_selectors`](./02_css_selectors/) | `curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/02_css_selectors/index.html` | Open `index.html` in browser |
| **3** | **Web Form Validation** (DHTML / JS, Real-time `oninput`, Email/Mobile regex) | [`03_form_validation`](./03_form_validation/) | `curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/03_form_validation/index.html` | Open `index.html` in browser |
| **4(A)** | **Image Slideshow & Digital Clock** (Auto 3s, Next/Prev, 12h AM/PM) | [`04a_slideshow_clock`](./04a_slideshow_clock/) | `curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/04a_slideshow_clock/index.html` | Open `index.html` in browser |
| **4(B)** | **Online Quiz System** (JavaScript & DOM Dynamic Scoring) | [`04b_online_quiz`](./04b_online_quiz/) | `curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/04b_online_quiz/index.html` | Open `index.html` in browser |
| **5** | **AngularJS Shopping Cart** (`ng-repeat`, `ng-show`, `ng-hide`, Category Filter) | [`05_angularjs_shopping_cart`](./05_angularjs_shopping_cart/) | `curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/05_angularjs_shopping_cart/index.html` | Open `index.html` in browser |
| **6** | **Online Supermarket Node + Mongo CLI & AngularJS Table** | [`06_supermarket_node_mongo`](./06_supermarket_node_mongo/) | `curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/06_supermarket_node_mongo/supermarket_cli.js` | `node supermarket_cli.js Milk` |
| **7** | **REST API with Express & AJAX Application** | [`07_rest_api_ajax`](./07_rest_api_ajax/) | `curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/07_rest_api_ajax/server.js` | `node server.js` |

---

## 🎯 Quick Selective Fetching via `get.sh`

If you only need one specific experiment during your lab exam, use `get.sh`:

```bash
# Fetch Experiment 1
curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 1

# Fetch Experiment 3 (Form Validation)
curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 3

# Fetch Experiment 4A (Slideshow & Clock)
curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 4a

# Fetch Experiment 4B (Online Quiz)
curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 4b

# Fetch Experiment 5 (AngularJS Cart)
curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 5

# Fetch Experiment 6 (Supermarket Node & Mongo)
curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 6

# Fetch Experiment 7 (REST API & AJAX)
curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 7
```

---

## 📝 College Exam Split-up Reference

For full mapping of the 12 split-up questions given by college examiners, see [**EXAM_CHEAT_SHEET.md**](./EXAM_CHEAT_SHEET.md).

### Mark Allocation Breakdown:
- **Aim & Algorithm:** 10 Marks
- **Program:** 60 Marks
- **Output & Result:** 20 Marks
- **Viva Voce:** 10 Marks
- **Total:** 100 Marks

Each experiment's folder includes a `README.md` formatted specifically to copy-paste the **Aim**, **Algorithm**, and **Result** directly onto your answer paper!

---

## 💡 Practical Exam Tips & Viva Prep

1. **HTML Elements:** Remember that block elements take 100% width, inline elements only wrap content. HTML5 tags (`<header>`, `<nav>`, `<article>`, `<section>`, `<footer>`) improve semantic SEO.
2. **CSS Specificity:** `Inline (1000) > ID (100) > Class (10) > Element (1) > Universal (0)`.
3. **Form Validation:** Use `oninput` for real-time feedback as the user types, and `onsubmit="return validateForm()"` to prevent submission when validation fails.
4. **AngularJS:**
   - `ng-app`: Defines the root of the AngularJS application.
   - `ng-controller`: Attaches controller logic and `$scope`.
   - `ng-model`: Enables two-way data binding.
   - `ng-repeat`: Clones HTML elements for each item in an array.
   - `ng-show` / `ng-hide`: Shows or hides elements using CSS `display`.
5. **Node.js & MongoDB:**
   - Mongoose connects via `mongoose.connect('mongodb://127.0.0.1:27017/supermarket')`.
   - `.sort({ price: 1 })` sorts ascending; `.sort({ price: -1 })` sorts descending.
6. **Express & AJAX:**
   - REST endpoints use standard HTTP methods (`GET`, `POST`, `PUT`, `DELETE`).
   - AJAX uses `fetch()` or `XMLHttpRequest` to update web contents dynamically without page refresh.
   - CORS is required when front-end and back-end communicate across different ports.
