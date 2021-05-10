<?php
// Include config file
require_once "config.php";
 
// Define variables and initialize with empty values
$loginKlient = $hasloKlient = $powtorz_hasloKlient = $imieKlient = $nazwiskoKlient = $emailKlient = $peselKlient = $telefonKlient = "";
$loginKlient_err = $hasloKlient_err = $powtorz_hasloKlient_err = $imieKlient_err = $nazwiskoKlient_err =$emailKlient_err = $peselKlient_err = $telefonKlient_err = "";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    // Validate username
    if(empty(trim($_POST["loginKlient"]))){
        $loginKlient_err = "Proszę podać login!";
    } else{
        // Prepare a select statement
        $sql = "SELECT idKlient FROM klient WHERE loginKlient = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_loginKlient);
            
            // Set parameters
            $param_loginKlient = trim($_POST["loginKlient"]);
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                /* store result */
                mysqli_stmt_store_result($stmt);
                
                if(mysqli_stmt_num_rows($stmt) >= 1){
                    $loginKlient_err = "Ta nazwa użytkownika jest już zajęta!";
                } else{
                    $loginKlient = trim($_POST["loginKlient"]);
                }
            } else{
                echo "LGN Ups! coś poszło nie tak. Spróbuj ponownie później.";
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }

    // Validate Imie
    if(empty(trim($_POST["imieKlient"]))){
        $imieKlient_err = "Proszę podać Imię!";
    } else{
        $imieKlient = trim($_POST["imieKlient"]);
    }

    // Validate Nazwisko
    if(empty(trim($_POST["nazwiskoKlient"]))){
        $nazwiskoKlient_err = "Proszę podać Nazwisko!";
    } else{
        $nazwiskoKlient = trim($_POST["nazwiskoKlient"]);
    }

    // Validate Pesel
    if(empty(trim($_POST["peselKlient"]))){
        $peselKlient_err = "Proszę podać pesel!";     
    } elseif(strlen(trim($_POST["peselKlient"])) <= 10 ){
        $peselKlient_err = "Pesel musi mieć 11 znaków!";
    } elseif(strlen(trim($_POST["peselKlient"])) >= 12 ){
        $peselKlient_err = "Pesel musi mieć 11 znaków!";
    } else{
        $peselKlient = trim($_POST["peselKlient"]);
    }

    // Validate Telefon
    if(empty(trim($_POST["telefonKlient"]))){
        $telefonKlient_err = "Prosze podać pesel!";     
    } elseif(strlen(trim($_POST["telefonKlient"])) <= 8 ){
        $telefonKlient_err = "Pesel musi mieć 9 znaków!";
    } elseif(strlen(trim($_POST["telefonKlient"])) >= 10 ){
        $telefonKlient_err = "Pesel musi mieć 9 znaków!";
    } else{
        $telefonKlient = trim($_POST["telefonKlient"]);
    }


    // Validate email
    if(empty(trim($_POST["emailKlient"]))){
        $emailKlient_err = "Proszę podać email!";
    } else{
        // Prepare a select statement
        $sql = "SELECT idKlient FROM klient WHERE emailKlient = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_emailKlient);
            
            // Set parameters
            $param_emailKlient = trim($_POST["emailKlient"]);
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                /* store result */
                mysqli_stmt_store_result($stmt);
                
                if(mysqli_stmt_num_rows($stmt) >= 1){
                    $emailKlient_err = "Konto z podanym emailem już istnieje";
                } else{
                    $emailKlient = trim($_POST["emailKlient"]);
                }
            } else{
                echo "LGN Ups! coś poszło nie tak. Spróbuj ponownie później.";
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }

    
    // Validate password
    if(empty(trim($_POST["hasloKlient"]))){
        $hasloKlient_err = "Proszę podać hasło!";     
    } elseif(strlen(trim($_POST["hasloKlient"])) < 6){
        $hasloKlient_err = "Hasło musi mieć co najmniej 6 znaków!";
    } else{
        $hasloKlient = trim($_POST["hasloKlient"]);
    }
    
    // Validate confirm password
    if(empty(trim($_POST["powtorz_hasloKlient"]))){
        $powtorz_hasloKlient_err = "Proszę ponownie wprowadzić hasło!.";     
    } else{
        $powtorz_hasloKlient = trim($_POST["powtorz_hasloKlient"]);
        if(empty($hasloKlient_err) && ($hasloKlient != $powtorz_hasloKlient)){
            $powtorz_hasloKlient_err = "Hasła nie są zgodne";
        }
    }
    
    // Check input errors before inserting in database
    if(empty($loginKlient_err) && empty($hasloKlient_err) && empty($powtorz_hasloKlient_err)){
        
        // Prepare an insert statement
        $sql = "INSERT INTO klient (loginKlient, hasloKlient, imieKlient, nazwiskoKlient, emailKlient, peselKlient, telefonKlient) VALUES (?, ?, ?, ?, ?, ?, ?)";
        //-----------------od tego miejsca nw czy db 

        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "sssssss", $param_loginKlient, $param_hasloKlient, $param_imieKlient, $param_nazwiskoKlient, $param_emailKlient, $param_peselKlient, $param_telefonKlient );
            
            // Set parameters
            $param_loginKlient = $loginKlient;
            $param_hasloKlient = password_hash($hasloKlient, PASSWORD_DEFAULT); // Creates a password hash
            $param_imieKlient = $imieKlient;
            $param_nazwiskoKlient = $nazwiskoKlient;
            $param_emailKlient = $emailKlient;
            $param_peselKlient = $peselKlient;
            $param_telefonKlient = $telefonKlient;
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Redirect to login page
                header("location: login.php");
            } else{
                echo "CALOSC Ups! coś poszło nie tak. Spróbuj ponownie później.";
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
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; }
        .wrapper{ width: 350px; padding: 20px; }
    </style>
</head>
<body>
    <div class="wrapper">
        <h2>Sign Up</h2>
        <p>Please fill this form to create an account.</p>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="loginKlient" class="form-control <?php echo (!empty($loginKlient_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $loginKlient; ?>">
                <span class="invalid-feedback"><?php echo $loginKlient_err; ?></span>
            </div>    
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="hasloKlient" class="form-control <?php echo (!empty($hasloKlient_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $hasloKlient; ?>">
                <span class="invalid-feedback"><?php echo $hasloKlient_err; ?></span>
            </div>
            <div class="form-group">
                <label>Confirm Password</label>
                <input type="password" name="powtorz_hasloKlient" class="form-control <?php echo (!empty($powtorz_hasloKlient_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $powtorz_hasloKlient; ?>">
                <span class="invalid-feedback"><?php echo $powtorz_hasloKlient_err; ?></span>
            </div>
                <div class="form-group">
                <label>Imie</label>
                <input type="text" name="imieKlient" class="form-control <?php echo (!empty($imieKlient_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $imieKlient; ?>">
                <span class="invalid-feedback"><?php echo $imieKlient_err; ?></span>
            </div> 

            <div class="form-group">
                <label>Nazwisko</label>
                <input type="text" name="nazwiskoKlient" class="form-control <?php echo (!empty($nazwiskoKlient_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $nazwiskoKlient; ?>">
                <span class="invalid-feedback"><?php echo $nazwiskoKlient_err; ?></span>
            </div> 
            <div class="form-group">
                <label>E-mail</label>
                <input type="email" name="emailKlient" class="form-control <?php echo (!empty($emailKlient_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $emailKlient; ?>">
                <span class="invalid-feedback"><?php echo $emailKlient_err; ?></span>
            </div> 

            <div class="form-group">
                <label>PESEL</label>
                <input type="number" name="peselKlient" class="form-control <?php echo (!empty($peselKlient_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $peselKlient; ?>">
                <span class="invalid-feedback"><?php echo $peselKlient_err; ?></span>
            </div>

            <div class="form-group">
                <label>telefon</label>
                <input type="number" name="telefonKlient" class="form-control <?php echo (!empty($telefonKlient_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $telefonKlient; ?>">
                <span class="invalid-feedback"><?php echo $telefonKlient_err; ?></span>
            </div>


            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Submit">
                <input type="reset" class="btn btn-secondary ml-2" value="Reset">
            </div>
            <p>Already have an account? <a href="login.php">Login here</a>.</p>
        </form>
    </div>    
</body>
</html>