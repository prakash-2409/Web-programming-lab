#!/usr/bin/env bash
# ==============================================================================
# ML1503 WEB PROGRAMMING LAB - SELECTIVE EXPERIMENT FETCHER
# ==============================================================================
# Examples:
#   curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 1
#   curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 2
#   curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 3
#   curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 4a
#   curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 4b
#   curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 5
#   curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 6
#   curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s 7
#   curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/get.sh | bash -s all
# ==============================================================================

EXP="${1:-all}"
EXP_LOWER=$(echo "$EXP" | tr '[:upper:]' '[:lower:]')
BASE_URL="https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main"

fetch_exp1() {
    echo "⬇ Fetching Experiment 1: HTML Elements & Portfolio..."
    mkdir -p 01_html_elements_portfolio
    curl -sSL "$BASE_URL/01_html_elements_portfolio/index.html" -o 01_html_elements_portfolio/index.html
    curl -sSL "$BASE_URL/01_html_elements_portfolio/README.md" -o 01_html_elements_portfolio/README.md
    echo "✔ Done! Open: 01_html_elements_portfolio/index.html"
}

fetch_exp2() {
    echo "⬇ Fetching Experiment 2: CSS Types & Selectors..."
    mkdir -p 02_css_selectors
    curl -sSL "$BASE_URL/02_css_selectors/index.html" -o 02_css_selectors/index.html
    curl -sSL "$BASE_URL/02_css_selectors/style.css" -o 02_css_selectors/style.css
    curl -sSL "$BASE_URL/02_css_selectors/README.md" -o 02_css_selectors/README.md
    echo "✔ Done! Open: 02_css_selectors/index.html"
}

fetch_exp3() {
    echo "⬇ Fetching Experiment 3: Web Form Validation..."
    mkdir -p 03_form_validation
    curl -sSL "$BASE_URL/03_form_validation/index.html" -o 03_form_validation/index.html
    curl -sSL "$BASE_URL/03_form_validation/README.md" -o 03_form_validation/README.md
    echo "✔ Done! Open: 03_form_validation/index.html"
}

fetch_exp4a() {
    echo "⬇ Fetching Experiment 4(A): Slideshow & Digital Clock..."
    mkdir -p 04a_slideshow_clock
    curl -sSL "$BASE_URL/04a_slideshow_clock/index.html" -o 04a_slideshow_clock/index.html
    curl -sSL "$BASE_URL/04a_slideshow_clock/README.md" -o 04a_slideshow_clock/README.md
    echo "✔ Done! Open: 04a_slideshow_clock/index.html"
}

fetch_exp4b() {
    echo "⬇ Fetching Experiment 4(B): Online Quiz System..."
    mkdir -p 04b_online_quiz
    curl -sSL "$BASE_URL/04b_online_quiz/index.html" -o 04b_online_quiz/index.html
    curl -sSL "$BASE_URL/04b_online_quiz/README.md" -o 04b_online_quiz/README.md
    echo "✔ Done! Open: 04b_online_quiz/index.html"
}

fetch_exp5() {
    echo "⬇ Fetching Experiment 5: AngularJS Shopping Cart..."
    mkdir -p 05_angularjs_shopping_cart
    curl -sSL "$BASE_URL/05_angularjs_shopping_cart/index.html" -o 05_angularjs_shopping_cart/index.html
    curl -sSL "$BASE_URL/05_angularjs_shopping_cart/angular.min.js" -o 05_angularjs_shopping_cart/angular.min.js
    curl -sSL "$BASE_URL/05_angularjs_shopping_cart/README.md" -o 05_angularjs_shopping_cart/README.md
    echo "✔ Done! Open: 05_angularjs_shopping_cart/index.html"
}

fetch_exp6() {
    echo "⬇ Fetching Experiment 6: Supermarket Node.js + MongoDB & AngularJS..."
    mkdir -p 06_supermarket_node_mongo
    curl -sSL "$BASE_URL/06_supermarket_node_mongo/supermarket_cli.js" -o 06_supermarket_node_mongo/supermarket_cli.js
    curl -sSL "$BASE_URL/06_supermarket_node_mongo/supermarket_table.html" -o 06_supermarket_node_mongo/supermarket_table.html
    curl -sSL "$BASE_URL/06_supermarket_node_mongo/seed_mongo.js" -o 06_supermarket_node_mongo/seed_mongo.js
    curl -sSL "$BASE_URL/06_supermarket_node_mongo/angular.min.js" -o 06_supermarket_node_mongo/angular.min.js
    curl -sSL "$BASE_URL/06_supermarket_node_mongo/package.json" -o 06_supermarket_node_mongo/package.json
    curl -sSL "$BASE_URL/06_supermarket_node_mongo/README.md" -o 06_supermarket_node_mongo/README.md
    echo "✔ Done! Run: node 06_supermarket_node_mongo/supermarket_cli.js Milk"
}

fetch_exp7() {
    echo "⬇ Fetching Experiment 7: REST API & AJAX Client..."
    mkdir -p 07_rest_api_ajax
    curl -sSL "$BASE_URL/07_rest_api_ajax/server.js" -o 07_rest_api_ajax/server.js
    curl -sSL "$BASE_URL/07_rest_api_ajax/index.html" -o 07_rest_api_ajax/index.html
    curl -sSL "$BASE_URL/07_rest_api_ajax/products.json" -o 07_rest_api_ajax/products.json
    curl -sSL "$BASE_URL/07_rest_api_ajax/package.json" -o 07_rest_api_ajax/package.json
    curl -sSL "$BASE_URL/07_rest_api_ajax/README.md" -o 07_rest_api_ajax/README.md
    echo "✔ Done! Run: node 07_rest_api_ajax/server.js"
}

case "$EXP_LOWER" in
    1) fetch_exp1 ;;
    2) fetch_exp2 ;;
    3) fetch_exp3 ;;
    4a) fetch_exp4a ;;
    4b) fetch_exp4b ;;
    4) fetch_exp4a; fetch_exp4b ;;
    5) fetch_exp5 ;;
    6) fetch_exp6 ;;
    7) fetch_exp7 ;;
    all)
        fetch_exp1
        fetch_exp2
        fetch_exp3
        fetch_exp4a
        fetch_exp4b
        fetch_exp5
        fetch_exp6
        fetch_exp7
        echo ""
        echo "🎉 All 7 Experiments successfully downloaded!"
        ;;
    *)
        echo "Unknown experiment: $EXP"
        echo "Valid options: 1, 2, 3, 4a, 4b, 5, 6, 7, all"
        exit 1
        ;;
esac
