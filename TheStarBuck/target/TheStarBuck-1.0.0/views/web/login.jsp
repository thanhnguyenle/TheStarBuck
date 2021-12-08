<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" data-auto-replace-svg></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="shortcut icon" type="images/logo.png" href="images/logo.png">
    <link rel="stylesheet" href="css/login.css">
</head>

<body>
    <section class="container login my-5 bg-light">
        <div class="">
            <div class="row g-0">
                <div class="col-lg-5 thumb-box">
                    <img src="images/loginTitle2.svg" class="img-fluid" alt="" srcset="">
                </div>
                <div class="col-lg-7 text-center py-4 loginContent">
                    <h1>GET STARTED</h1>
                    <div class="logoImg ">
                        <a href="index.jsp"><img src="images/logo.png" alt=""> </a>
                    </div>
                    <form>
                        <div class="form-row py-4 pt-5">
                            <div class="offset-1 col-lg-10">
                                <input type="text" class="inp px-3" placeholder="email">
                            </div>
                        </div>
                        <div class="form-row py-3">
                            <div class="offset-1 col-lg-10">
                                <input type="password"  class="inp px-3 ipnPassword" placeholder="password" id="pass">
                                <button class="btn btn-outline-secondary btnPassword" type="button" id="passeye">
                                    <span class="fas fa-eye"></span>
                                  </button>
                            </div>
                        </div>
                        <div class="form-row py-3">
                            <div class="offset-1 col-lg-10">
                                <button type="submit" class="btn1">Sign Up</button>
                            </div>
                        </div>
                    </form>                    
                    <p>Or Login With</p>
                    <span><i class="fab fa-facebook"></i></span>
                    <span><i class="fab fa-google-plus"></i></span>
                    <div class="pt-3">
                        <a class="creatAcc" href="createAcc.jsp">Create Account</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

</body>
<script src="js/login.js"></script>
</html>