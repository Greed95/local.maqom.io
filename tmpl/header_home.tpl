<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MAQOM.IO</title>

  <link rel="stylesheet" href="css/icofont.min.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/aos.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/responsive.css">
  <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

</head>

<body>

  <!-- Preloader -->
  <div id="preloader">
    <div id="loader"></div>
  </div>

  <!-- Header Start -->
  <header>
    <!-- container start -->
    <div class="container">
      <!-- navigation bar -->
      <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="index.html">
          <img src="images/logo.png" alt="Logo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon">
            <!-- <i class="icofont-navigation-menu ico_menu"></i> -->
            <span class="toggle-wrap">
              <span class="toggle-bar"></span>
            </span>
          </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <div class="btn_block">

					{if $userinfo.logged != 1}
					<a class="nav-link dark_btn" href="?a=login">Login</a>
					{else}
					<a class="nav-link dark_btn" href="?a=logout">Logout</a>
					{/if}


                <div class="btn_bottom"></div>
              </div>
            </li>

            <li class="nav-item">
                <div class="btn_block">

						{if $userinfo.logged != 1}
						<a class="nav-link dark_btn" href="?a=signup">Signup</a>
						{else}
						<a class="nav-link dark_btn" href="?a=account">Account</a>
						{/if}

                  <div class="btn_bottom"></div>
                </div>
            </li>

          </ul>
        </div>
      </nav>
      <!-- navigation end -->
    </div>
    <!-- container end -->
  </header>