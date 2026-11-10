# EXPERIMENT 5: AngularJS Built-in Directives & Shopping Cart Application

**Subject:** ML1503 – Web Programming Lab  
**Exam Mark Split-up:** Aim & Algorithm (10) | Program (60) | Output & Result (20) | Viva (10) | Total (100)

---

### Quick 1-Line Curl Commands to Download This Experiment
```bash
mkdir -p 05_angularjs_shopping_cart && cd 05_angularjs_shopping_cart
# Download HTML file
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/05_angularjs_shopping_cart/index.html
# Download offline AngularJS library
curl -O https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/05_angularjs_shopping_cart/angular.min.js
```

---

## 1. AIM
To use built-in AngularJS directives (`ng-app`, `ng-controller`, `ng-model`, `ng-repeat`, `ng-show`, `ng-hide`, and `ng-click`) to display filtered product lists and design an interactive Shopping Cart application where items selected across categories are rendered in a cart summary with the total computed price upon clicking submit.

---

## 2. ALGORITHM
1. Include AngularJS library in the `<head>` section (`angular.min.js` with CDN fallback).
2. Declare `ng-app="shopApp"` on the `<html>` root and bind `ng-controller="shopCtrl"` to the `<body>`.
3. In JavaScript, initialize the Angular module `angular.module('shopApp', [])` and define controller `$scope` variables:
   - `products`: An array of objects each having `name`, `category`, `price`, and `selected` boolean state.
   - `selectedCategory`: Category filter string bound via `ng-model` to `<select>`.
   - `hideProducts`: Boolean toggled via `ng-click` to demonstrate `ng-hide`.
   - `cart`: Array holding items selected by user.
   - `totalAmount`: Number holding total price.
4. Render product cards using `ng-repeat="item in products | filter:{category: selectedCategory}"` with checkboxes bound via `ng-model="item.selected"`.
5. On clicking the "Submit Cart" button (`ng-click="submitCart()"`), filter the products array where `item.selected === true` into `$scope.cart` and sum their prices.
6. Display the cart summary table dynamically using `ng-show="cartSubmitted && cart.length > 0"`.

---

## 3. HOW TO EXECUTE
Open `index.html` in your web browser:
```bash
xdg-open index.html || google-chrome index.html || firefox index.html
```
*(Includes local `angular.min.js`, guaranteeing 100% functionality without internet!)*

---

## 4. EXPECTED OUTPUT
- **Category Filter:** Selecting "Electronics" instantly narrows down displayed cards to only electronic items using Angular filters.
- **Toggle Visibility:** Clicking "Hide Product List" immediately hides the product grid via the `ng-hide` directive.
- **Cart Selection & Submission:**
  - Checking items across multiple categories (e.g. Wireless Mouse + Organic Honey) and clicking "Submit Cart".
  - A structured table appears with column headers `Product Name`, `Category`, and `Unit Price`.
  - The banner displays: `Total Payable Amount: Rs. 970`.

---

## 5. RESULT
Thus, built-in AngularJS directives (`ng-model`, `ng-repeat`, `ng-show`, `ng-hide`) and the interactive shopping cart application were developed and verified successfully.

---

## 6. VIVA VOCE QUESTIONS & ANSWERS
1. **Q: What is AngularJS and what architecture does it follow?**  
   *A:* AngularJS is a JavaScript-based open-source front-end framework maintained by Google. It follows the Model-View-Controller (MVC) or Model-View-ViewModel (MVVM) architectural pattern.
2. **Q: What is Two-Way Data Binding in AngularJS?**  
   *A:* Any change in the View (UI input) automatically updates the Model (`$scope`), and any change in the Model automatically reflects in the View without manual DOM manipulation. It is achieved using the `ng-model` directive.
3. **Q: What is the difference between `ng-show` and `ng-if`?**  
   *A:* `ng-show` toggles CSS `display: none` without destroying the element from the DOM tree. `ng-if` physically removes or recreates the DOM element based on boolean truthiness.
4. **Q: What is `$scope` in AngularJS?**  
   *A:* `$scope` is the glue object between the Controller (JavaScript logic) and the View (HTML markup). It contains model data and functions accessible to the view.
5. **Q: How does `ng-repeat` work?**  
   *A:* It iterates over a collection/array and instantiates a copy of the specified HTML template for each item in the collection.
