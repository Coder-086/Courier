<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="../../static/css/login.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<title>Login Page</title>
 <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="../../static/css/login.css"/>
    <title>Sign in & Sign up Form</title>
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form action="#" class="sign-in-form">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="email" id = "email" placeholder="Email" required=""/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" id = "password" placeholder="Password" required=""/>
            </div>
            <div class="forget-field">
                <a href="forget">Forgot your password?</a>
            </div>
            <input type="submit" onclick="login(event)" value="Login" class="btn solid" />
            <p class="social-text">Or Sign in with social platforms</p>
            <div class="social-media">
              <a href="https://accounts.google.com/signin/v2/identifier?hl=en&continue=https%3A%2F%2Fmail.google.com%2Fmail&service=mail&ec=GAlAFw&flowName=GlifWebSignIn&flowEntry=AddSession" class="social-icon" target="_blank">
                <i class="fab fa-google"></i>
              </a>
            </div>
          </form>
          <form action="#" class="sign-up-form">
            <h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" id="Username" placeholder="Username" required=""/>
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" id="Email" placeholder="Email" required=""/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" id="Password" required="" placeholder="Password"/>
            </div>
             <div class="input-field">
                <i class="fas fa-lock"></i>
                <input type="password" id="confirm_password" required="" placeholder="Confirm Password"  />
             </div>
            <input type="submit" onclick = "signup(event)"class="btn" value="Sign up" />
            <p class="social-text">Or Sign up with social platforms</p>
            <div class="social-media">
              <a href="https://accounts.google.com/signin/v2/identifier?hl=en&continue=https%3A%2F%2Fmail.google.com%2Fmail&service=mail&ec=GAlAFw&flowName=GlifWebSignIn&flowEntry=AddSession" class="social-icon" target="_blank">
                <i class="fab fa-google"></i>
              </a>
            </div>
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>COURIER MANAGEMENT SYSTEM</h3>
            <p>

            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="" class="image imagesign-up" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>COURIER MANAGEMENT SYSTEM</h3>
            <p>

            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="" class="image imagesign-in" alt="" />
        </div>
      </div>
    </div>

    <script src="../../static/js/login.js"></script>
  </body>

</html>