<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expression Converter</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Expression Converter</h1>
        <nav>
            <ul>
                <li><a href="#" id="homeLink">Home</a></li>
                <li><a href="#" id="conceptLink">Concept</a></li>
                <li><a href="#" id="conversionLink">Conversion</a></li>
            </ul>
        </nav>
    </header>

    <div class="container">
        <!-- 홈 화면 -->
        <div class="home-content">
            <h2>Welcome to Expression Converter</h2>
            <p>This is the home page of Expression Converter. You can learn about expression conversion concepts and perform conversions.</p>
        </div>

        <!-- 개념 화면 -->
        <div class="concept-container">
            <h2>Concepts</h2>
            <p>Here, you can learn about expression conversion concepts.</p>
        </div>

        <!-- 변환 화면 -->
        <div class="conversion-container">
            <h2>Conversion</h2>
            <p>Enter an infix expression below and click "Convert" to see the postfix expression:</p>
            <div class="conversion-form">
                <input type="text" id="infixExpression" placeholder="Enter Infix Expression">
                <button id="convertButton">Convert</button>
            </div>
            <div class="conversion-result">
                <label for="postfixExpression">Postfix Expression:</label>
                <input type="text" id="postfixExpression" readonly>
            </div>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
