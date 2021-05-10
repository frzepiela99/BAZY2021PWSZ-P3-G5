<?php
// Initialize the session
session_start();
 
// Check if the user is already logged in, if yes then redirect him to welcome page
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: welcome.php");
    exit;
}
 
// Include config file
require_once "config.php";
 
// Define variables and initialize with empty values
$loginKlient = $hasloKlient = "";
$loginKlient_err = $hasloKlient_err = $loginKlient_err = "";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    // Check if username is empty
    if(empty(trim($_POST["loginKlient"]))){
        $loginKlient_err = "Podaj nazwę użytkownika.";
    } else{
        $loginKlient = trim($_POST["loginKlient"]);
    }
    
    // Check if password is empty
    if(empty(trim($_POST["hasloKlient"]))){
        $hasloKlient_err = "Wprowadź hasło.";
    } else{
        $hasloKlient = trim($_POST["hasloKlient"]);
    }
    
    // Validate credentials
    if(empty($loginKlient_err) && empty($hasloKlient_err)){
        // Prepare a select statement
        $sql = "SELECT idKlient, loginKlient, hasloKlient FROM klient WHERE loginKlient = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_loginKlient);
            
            // Set parameters
            $param_loginKlient = $loginKlient;
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Store result
                mysqli_stmt_store_result($stmt);
                
                // Check if username exists, if yes then verify password
                if(mysqli_stmt_num_rows($stmt) == 1){                    
                    // Bind result variables
                    mysqli_stmt_bind_result($stmt, $idKlient, $loginKlient, $hashed_password);
                    if(mysqli_stmt_fetch($stmt)){
                        if(password_verify($hasloKlient, $hashed_password)){
                            // Password is correct, so start a new session
                            session_start();
                            
                            // Store data in session variables
                            $_SESSION["loggedin"] = true;
                            $_SESSION["idKlient"] = $idKlient;
                            $_SESSION["loginKlient"] = $loginKlient;                            
                            
                            // Redirect user to welcome page
                            header("location: welcome.php");
                        } else{
                            // Password is not valid, display a generic error message
                            $loginKlient_err = "Podano błędny login lub hasło!";
                        }
                    }
                } else{
                    // Username doesn't exist, display a generic error message
                    $loginKlient_err = "Podano błędny login lub hasło!";
                }
            } else{
                echo "Ups! Coś poszło nie tak. Spróbuj ponownie później.";
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }
    
    // Close connection
    mysqli_close($link);
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; background-image: url(https://www.black.space/wp-content/uploads/2021/01/Blackspace_Kia_3.jpeg); background-size: cover; background-position:center; min-height: 100vh;}
        .wrapper{ width: 350px; padding: 20px; margin-top: 150px; }
        .form-group{ position: center;}
    </style>
</head>
<body>
    <center>
    <div class="wrapper">
        <h2 style="color: white;">Zaloguj się!</h2>
        <p style="color: white;">Proszę podać <u>poprawny</u> login oraz hasło.</p>

        <?php 
        if(!empty($loginKlient_err)){
            echo '<div class="alert alert-danger">' . $loginKlient_err . '</div>';
        }        
        ?>

        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" style="position: center;">
            <div class="form-group">
                <label style="color: white;">Login:</label>
                <input type="text" name="loginKlient" class="form-control <?php echo (!empty($loginKlient_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $loginKlient; ?>">
                <span class="invalid-feedback"><?php echo $loginKlient_err; ?></span>
            </div>    
            <div class="form-group">
                <label style="color: white;">Haslo:</label>
                <input type="password" name="hasloKlient" class="form-control <?php echo (!empty($hasloKlient_err)) ? 'is-invalid' : ''; ?>">
                <span class="invalid-feedback"><?php echo $hasloKlient_err; ?></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Zaloguj się">
            </div>
        </form>
    </div>
    </center>
</body>
</html>