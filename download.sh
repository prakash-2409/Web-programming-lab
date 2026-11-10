#!/usr/bin/env bash
# ==============================================================================
# ML1503 WEB PROGRAMMING LAB - ONE-LINE SETUP & DOWNLOAD SCRIPT
# ==============================================================================
# Usage on any lab computer:
#   curl -sSL https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main/download.sh | bash
# ==============================================================================

set -e

REPO_URL="https://github.com/prakash-2409/Web-programming-lab.git"
ZIP_URL="https://github.com/prakash-2409/Web-programming-lab/archive/refs/heads/main.zip"
TARGET_DIR="Web-programming-lab"

echo ""
echo "=================================================================="
echo "   🚀 ML1503 Web Programming Practical Lab - Auto Downloader   "
echo "=================================================================="
echo ""

# Method 1: Git Clone if git exists
if command -v git >/dev/null 2>&1; then
    echo "[1/2] Git found! Cloning repository..."
    if [ -d "$TARGET_DIR" ]; then
        echo "Directory '$TARGET_DIR' already exists. Pulling latest updates..."
        cd "$TARGET_DIR" && git pull && cd ..
    else
        git clone "$REPO_URL" "$TARGET_DIR"
    fi
# Method 2: Unzip archive
elif command -v unzip >/dev/null 2>&1 && command -v curl >/dev/null 2>&1; then
    echo "[1/2] Downloading repository ZIP archive via curl..."
    curl -L "$ZIP_URL" -o /tmp/weblab.zip
    unzip -q /tmp/weblab.zip
    rm -rf "$TARGET_DIR"
    mv Web-programming-lab-main "$TARGET_DIR"
    rm /tmp/weblab.zip
# Method 3: Fallback curl downloader
else
    echo "[1/2] Downloading folders directly using curl..."
    mkdir -p "$TARGET_DIR" && cd "$TARGET_DIR"
    
    BASE_RAW="https://raw.githubusercontent.com/prakash-2409/Web-programming-lab/main"
    
    # Exp 1
    mkdir -p 01_html_elements_portfolio
    curl -sSL "$BASE_RAW/01_html_elements_portfolio/index.html" -o 01_html_elements_portfolio/index.html
    curl -sSL "$BASE_RAW/01_html_elements_portfolio/README.md" -o 01_html_elements_portfolio/README.md
    
    # Exp 2
    mkdir -p 02_css_selectors
    curl -sSL "$BASE_RAW/02_css_selectors/index.html" -o 02_css_selectors/index.html
    curl -sSL "$BASE_RAW/02_css_selectors/style.css" -o 02_css_selectors/style.css
    curl -sSL "$BASE_RAW/02_css_selectors/README.md" -o 02_css_selectors/README.md

    # Exp 3
    mkdir -p 03_form_validation
    curl -sSL "$BASE_RAW/03_form_validation/index.html" -o 03_form_validation/index.html
    curl -sSL "$BASE_RAW/03_form_validation/README.md" -o 03_form_validation/README.md

    # Exp 4a
    mkdir -p 04a_slideshow_clock
    curl -sSL "$BASE_RAW/04a_slideshow_clock/index.html" -o 04a_slideshow_clock/index.html
    curl -sSL "$BASE_RAW/04a_slideshow_clock/README.md" -o 04a_slideshow_clock/README.md

    # Exp 4b
    mkdir -p 04b_online_quiz
    curl -sSL "$BASE_RAW/04b_online_quiz/index.html" -o 04b_online_quiz/index.html
    curl -sSL "$BASE_RAW/04b_online_quiz/README.md" -o 04b_online_quiz/README.md

    # Exp 5
    mkdir -p 05_angularjs_shopping_cart
    curl -sSL "$BASE_RAW/05_angularjs_shopping_cart/index.html" -o 05_angularjs_shopping_cart/index.html
    curl -sSL "$BASE_RAW/05_angularjs_shopping_cart/README.md" -o 05_angularjs_shopping_cart/README.md

    # Exp 6
    mkdir -p 06_supermarket_node_mongo
    curl -sSL "$BASE_RAW/06_supermarket_node_mongo/supermarket_cli.js" -o 06_supermarket_node_mongo/supermarket_cli.js
    curl -sSL "$BASE_RAW/06_supermarket_node_mongo/supermarket_table.html" -o 06_supermarket_node_mongo/supermarket_table.html
    curl -sSL "$BASE_RAW/06_supermarket_node_mongo/seed_mongo.js" -o 06_supermarket_node_mongo/seed_mongo.js
    curl -sSL "$BASE_RAW/06_supermarket_node_mongo/README.md" -o 06_supermarket_node_mongo/README.md

    # Exp 7
    mkdir -p 07_rest_api_ajax
    curl -sSL "$BASE_RAW/07_rest_api_ajax/server.js" -o 07_rest_api_ajax/server.js
    curl -sSL "$BASE_RAW/07_rest_api_ajax/index.html" -o 07_rest_api_ajax/index.html
    curl -sSL "$BASE_RAW/07_rest_api_ajax/products.json" -o 07_rest_api_ajax/products.json
    curl -sSL "$BASE_RAW/07_rest_api_ajax/README.md" -o 07_rest_api_ajax/README.md

    cd ..
fi

echo ""
echo "✅ [2/2] Download Complete!"
echo "📁 All lab programs are ready inside directory: '$TARGET_DIR'"
echo ""
echo "---------------- QUICK RUNNING CHEAT SHEET ----------------"
echo "👉 Exp 1 (HTML Portfolio):      xdg-open $TARGET_DIR/01_html_elements_portfolio/index.html"
echo "👉 Exp 2 (CSS Selectors):       xdg-open $TARGET_DIR/02_css_selectors/index.html"
echo "👉 Exp 3 (Form Validation):     xdg-open $TARGET_DIR/03_form_validation/index.html"
echo "👉 Exp 4A (Slideshow & Clock):  xdg-open $TARGET_DIR/04a_slideshow_clock/index.html"
echo "👉 Exp 4B (Online Quiz):        xdg-open $TARGET_DIR/04b_online_quiz/index.html"
echo "👉 Exp 5 (AngularJS Cart):      xdg-open $TARGET_DIR/05_angularjs_shopping_cart/index.html"
echo "👉 Exp 6 (Supermarket CLI):     node $TARGET_DIR/06_supermarket_node_mongo/supermarket_cli.js Milk"
echo "👉 Exp 7 (REST API & AJAX):     node $TARGET_DIR/07_rest_api_ajax/server.js"
echo "-----------------------------------------------------------"
echo "Best of luck for your semester practical exams! 💯"
echo ""
