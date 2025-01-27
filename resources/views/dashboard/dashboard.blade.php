<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Dashboard</title>
    <!-- Font Awesome -->
    <!-- MDB icon -->
    <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" href="../../css/mdb.min.css">
    <!-- Your custom styles (optional) -->
    <link rel="stylesheet" href="../../css/style.css">



</head>




<body class="fixed-sn" style="background-color: #EEEEEE">

<!-- Main Navigation -->
<header>

    <!-- Sidebar navigation -->
   @include('dashboard.side_bar')
    <!-- Sidebar navigation -->

    <!-- Navbar -->
    @include('dashboard.top_bar')
    <!-- Navbar -->


</header>
<!-- Main Navigation -->

<!-- Main layout -->
<main>
    @yield('content')
</main>
<!-- Main layout -->


<!--scripts---->
    @include('dashboard.javaScript')
<!--scripts---->























</body>

</html>
