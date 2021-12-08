<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CHANGE PASSWORD</title>
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" data-auto-replace-svg></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="shortcut icon" type="images/logo.png" href="images/logo.png">
    <link rel="stylesheet" href="css/forgotpass.css">
</head>

<body>
    <section class="container login my-5 bg-light">
        <div class="">
            <div class="row g-0">
                <div class="col-lg-5 thumb-box">
                    <img src="images/change.png" class="img-fluid" alt="" srcset="">
                </div>
                <div class="col-lg-7 text-center py-4 loginContent">
                    <h1>CHANGE PASSWORD</h1>
                    <form>
                        <div class="form-row py-3">
                            <div class="offset-1 col-lg-10">
                                <input type="password" class="inp px-3 ipnPassword" placeholder="old password" id="passold">
                                <button class="btn btn-outline-secondary btnPassword" type="button" id="passeyeold">
                                    <span class="fas fa-eye"></span>
                                  </button>
                            </div>
                        </div>
                        <div class="form-row py-3">
                            <div class="offset-1 col-lg-10">
                                <input type="password" class="inp px-3 ipnPassword" placeholder="password" id="pass">
                                <button class="btn btn-outline-secondary btnPassword" type="button" id="passeye">
                                    <span class="fas fa-eye"></span>
                                  </button>
                            </div>
                        </div>
                        <div class="form-row py-3">
                            <div class="offset-1 col-lg-10">
                                <input type="password" class="inp px-3 ipnPassword" placeholder="retype password" id="retypepass">
                                <button class="btn btn-outline-secondary btnPassword" type="button" id="retypeeye">
                                    <span class="fas fa-eye"></span>
                                  </button>
                            </div>
                        </div>
                        <div class="form-row py-3">
                            <div class="offset-1 col-lg-10">
                                <button type="submit" class="btn1">Submit</button>
                            </div>
                        </div>
                    </form>                    
                    </div>
                </div>
            </div>
        </div>
    </section>

</body>
<script src="js/login.js"></script>

</html>