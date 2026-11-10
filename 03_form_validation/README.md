# EXPERIMENT 3: Client-Side Scripts for Validating Web Form Controls (DHTML / JS)

**Subject:** ML1503 – Web Programming Lab  
**Exam Mark Split-up:** Aim & Algorithm (10) | Program (60) | Output & Result (20) | Viva (10) | Total (100)

---

### Quick 1-Line Curl Command to Download This Experiment
```bash
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/03_form_validation/index.html
```

---

## 1. AIM
To write a client-side JavaScript and DHTML script to validate web form controls (Full Name, Email Address, Password, and 10-Digit Mobile Number) including real-time error messages and final submission verification.

---

## 2. ALGORITHM
1. Create an HTML form with input fields for Name, Email, Password, and Mobile Number, each paired with a dedicated `<span class="err">` tag for error display.
2. Bind the `oninput` event to each field to trigger real-time validation as the user types (`validateRealTime(field)`).
3. Bind the `onsubmit` event on the `<form>` to `validateForm()`.
4. Inside `validateForm()`:
   - Check if Name is empty or shorter than 3 characters.
   - Check if Email matches regular expression format `/^[^\s@]+@[^\s@]+\.[^\s@]+$/`.
   - Check if Password is at least 6 characters in length.
   - Check if Mobile Number consists of exactly 10 numerical digits using `/^[0-9]{10}$/`.
5. If any validation fails, inject descriptive error messages into the respective `span.err` elements via DOM manipulation (`innerText`) and return `false`.
6. If all checks pass, display a success confirmation box, trigger an alert, and return `true`.

---

## 3. HOW TO EXECUTE
Open `index.html` in your browser:
```bash
xdg-open index.html || google-chrome index.html || firefox index.html
```

---

## 4. EXPECTED OUTPUT
- **Invalid State:** Red error prompts appear dynamically below invalid inputs (e.g., "Name must be at least 3 characters", "Mobile must contain exactly 10 digits").
- **Real-Time Feedback:** Error prompts automatically disappear as soon as the user corrects the input.
- **Valid State:** Clicking Submit shows an alert `Success: Form Submitted Successfully!` and unhides a green success confirmation banner.

---

## 5. RESULT
Thus, client-side web form validation with real-time feedback using JavaScript and DHTML was designed and verified successfully.

---

## 6. VIVA VOCE QUESTIONS & ANSWERS
1. **Q: What is DHTML?**  
   *A:* Dynamic HTML (DHTML) is the combination of HTML, CSS, JavaScript, and the Document Object Model (DOM) to create interactive, animated, and responsive web pages without reloading from the server.
2. **Q: Why is client-side validation important when server-side validation exists?**  
   *A:* Client-side validation gives immediate feedback to users, improves user experience, prevents unnecessary HTTP network round-trips, and reduces server load. (However, server validation is still required for security).
3. **Q: What is the difference between `onchange` and `oninput` events?**  
   *A:* `oninput` fires immediately on every keystroke, cut, or paste. `onchange` only fires when the input element loses focus (on blur) after its value has changed.
4. **Q: How does `onsubmit="return validateForm()"` stop a form from submitting?**  
   *A:* Returning `false` from an inline event handler cancels the browser's default action (submitting the HTTP request to the server).
5. **Q: What regular expression checks for a valid 10-digit mobile number?**  
   *A:* `/^[0-9]{10}$/` where `^` is start of string, `[0-9]` matches digits 0 through 9, `{10}` specifies exactly 10 repetitions, and `$` is end of string.
