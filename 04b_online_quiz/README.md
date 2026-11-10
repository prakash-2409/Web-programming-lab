# EXPERIMENT 4(B): Web Application to Implement Online Quiz System

**Subject:** ML1503 – Web Programming Lab  
**Exam Mark Split-up:** Aim & Algorithm (10) | Program (60) | Output & Result (20) | Viva (10) | Total (100)

---

### Quick 1-Line Curl Command to Download This Experiment
```bash
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/04b_online_quiz/index.html
```

---

## 1. AIM
To develop an interactive client-side Online Quiz System web application using JavaScript and DOM manipulation that validates user responses, computes marks dynamically, highlights questions, and outputs the percentage score.

---

## 2. ALGORITHM
1. Structure the HTML quiz layout with multiple choice questions encapsulated in styled question cards.
2. Group the options of each question under identical `name` attributes (e.g. `name="q1"`, `name="q2"`) using `<input type="radio">` so only one option can be chosen per question.
3. Define a JavaScript answer key object `answerKey = { q1: "A", q2: "B", ... }` containing the correct options.
4. On clicking the "Submit Quiz" button, invoke `evaluateQuiz()`.
5. Iterate through the keys in `answerKey` and use CSS attribute selectors with `document.querySelector('input[name="q"]:checked')` to fetch the user's selected choice.
6. Compare the selected choice with the answer key. If correct, increment `score` and apply green border feedback; if wrong, apply red border feedback.
7. Compute the percentage score and inject the result summary into the DOM (`#resultBox`).
8. Provide a "Retake Quiz" button to reset the form inputs and DOM elements.

---

## 3. HOW TO EXECUTE
Open `index.html` in your browser:
```bash
xdg-open index.html || google-chrome index.html || firefox index.html
```

---

## 4. EXPECTED OUTPUT
- **Question Layout:** 4 distinct questions covering HTML, CSS, JavaScript, and AngularJS.
- **Answer Selection:** User selects one option per question using circular radio buttons.
- **On Submit:**
  - Card borders instantly update: Green for correct answers, Red for incorrect answers.
  - Summary banner displays: `Score: 4 / 4 (100%)` along with descriptive appraisal (`Outstanding! Perfect Score!`).
  - Option to reset and retake the quiz.

---

## 5. RESULT
Thus, the Online Quiz System web application was designed and tested successfully using JavaScript and DOM.

---

## 6. VIVA VOCE QUESTIONS & ANSWERS
1. **Q: How does `document.querySelector('input[name="q1"]:checked')` work?**  
   *A:* It uses CSS pseudo-class `:checked` along with attribute matching `[name="q1"]` to return the specific radio button node currently selected by the user, or `null` if no option was picked.
2. **Q: Why must radio buttons share the same `name` attribute?**  
   *A:* The browser creates mutually exclusive radio groups based on identical `name` attributes. Only one radio button in a named group can be active at any given moment.
3. **Q: How do you prevent users from submitting an empty quiz?**  
   *A:* By counting how many questions have `selected !== null`. If `answeredCount < totalQuestions`, we prompt the user via `confirm()` or alert to complete all questions.
4. **Q: What is the DOM (Document Object Model)?**  
   *A:* The DOM is an object-oriented tree representation of the HTML document created by the browser, allowing programming languages like JavaScript to read, manipulate, and restyle content dynamically.
5. **Q: How can we dynamically reset all form inputs in JavaScript?**  
   *A:* Calling the native `.reset()` method on the form element: `document.getElementById("quizForm").reset();`.
