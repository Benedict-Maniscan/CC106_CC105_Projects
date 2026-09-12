<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="stylesheet" href="style.css">
    
</head>
<body>

<div class="container">
    <div class="login-box">
        <h1>Welcome</h1>

        <form action="check.php" method="post">
            <div class="input-box">
                <input type="text" name="username" placeholder="Username" required>
            </div>

            <div class="input-box">
                <input type="password" name="password" placeholder="Password" required>
            </div>

            <div class="options">
                <label>
                    <input type="checkbox">
                    Save password
                </label>

                <a href="#">Forgot Password?</a>
            </div>

            <button type="submit">LOGIN</button>

            <p>
                Don't have an account?
                <a href="#">Sign Up</a>
            </p>
        </form>
    </div>
</div>

</body>
</html>