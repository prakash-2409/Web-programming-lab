# EXPERIMENT 4(A): JavaScript & DOM: Image Slideshow & Digital Clock

**Subject:** ML1503 – Web Programming Lab  
**Exam Mark Split-up:** Aim & Algorithm (10) | Program (60) | Output & Result (20) | Viva (10) | Total (100)

---

### Quick 1-Line Curl Command to Download This Experiment
```bash
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/04a_slideshow_clock/index.html
```

---

## 1. AIM
To design and develop an Image Slideshow with automatic 3-second transitions along with manual Previous/Next navigation buttons, and a real-time Digital Clock showing the time in 12-hour format with AM/PM and current date updated every second using JavaScript and DOM manipulation.

---

## 2. ALGORITHM
### (A) Digital Clock:
1. Define a function `updateClock()`.
2. Inside the function, instantiate `new Date()`.
3. Extract the 12-hour formatted time with AM/PM using `toLocaleTimeString('en-US', { hour12: true })`.
4. Extract the date (day, month, date, year) using `toLocaleDateString('en-US')`.
5. Update the DOM elements via `innerText`.
6. Invoke `setInterval(updateClock, 1000)` to trigger updates every 1000 milliseconds (1 second).

### (B) Image Slideshow:
1. Initialize an array of image slide objects containing image sources and descriptive titles.
2. Initialize `currentIndex = 0`.
3. Create a function `changeSlide(direction)` that updates `currentIndex = (currentIndex + direction + slides.length) % slides.length`.
4. Dynamically update the `src` attribute of the `<img>` tag and update the slide counter indicator in the DOM.
5. Attach `changeSlide(-1)` and `changeSlide(1)` to "Previous" and "Next" button click events.
6. Initialize an automatic slideshow interval using `setInterval(() => changeSlide(1), 3000)` to cycle slides every 3 seconds.

---

## 3. HOW TO EXECUTE
Open `index.html` in your browser:
```bash
xdg-open index.html || google-chrome index.html || firefox index.html
```
*(Note: Uses clean offline SVG images, so it works 100% reliably even without an internet connection in the exam lab!)*

---

## 4. EXPECTED OUTPUT
- **Digital Clock Banner:** High-visibility clock showing running seconds in 12-hour format with AM/PM indicator (e.g. `10:30:45 AM`) and today's full date string.
- **Slideshow Display:** Large presentation slide image with slide title and index indicator (`Slide 1 of 3`).
- **Interaction:**
  - Automatically transitions to the next slide every 3 seconds.
  - Clicking "Previous" loads the earlier slide.
  - Clicking "Next" advances to the following slide smoothly.

---

## 5. RESULT
Thus, the Image Slideshow with 3-second auto-transition and the 12-hour Digital Clock with calendar date were designed and verified using JavaScript and DOM.

---

## 6. VIVA VOCE QUESTIONS & ANSWERS
1. **Q: What is the difference between `setInterval()` and `setTimeout()`?**  
   *A:* `setInterval(fn, ms)` repeatedly executes the callback function at specified periodic intervals until cleared with `clearInterval()`. `setTimeout(fn, ms)` executes the callback once after the specified delay.
2. **Q: How does the modulo operator `(index + step + length) % length` help in slideshow logic?**  
   *A:* It provides circular wrapping: advancing past the last slide automatically wraps back to index `0`, and reversing before index `0` cleanly wraps around to the last slide (`length - 1`).
3. **Q: How does JavaScript interact with the DOM?**  
   *A:* JavaScript accesses HTML elements via methods like `document.getElementById()` or `document.querySelector()`, and dynamically alters element attributes (`src`, `href`), inline styles (`style.opacity`), or content (`innerText`, `innerHTML`).
4. **Q: Why use `toLocaleTimeString()` instead of manually concatenating hours, minutes, and seconds?**  
   *A:* `toLocaleTimeString()` automatically formats numbers with leading zeros, handles locale-specific delimiters, and cleanly converts 24-hour military time into 12-hour AM/PM format.
5. **Q: What is the benefit of using SVG Data URIs for offline lab exams?**  
   *A:* SVG Data URIs embed vector graphic instructions directly inside the code string, eliminating external network dependencies and ensuring that the slides never appear broken if the lab lacks internet access.
