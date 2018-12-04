<!doctype html>
<html lang="en">
<head>

  <?php
  include "koneksi.php";
  include "fuzzy/fuzzy.php";
  include "fuzzy/handler.php";

  $fuzzy = new fuzzy();
  $conn = mysqli_connect("localhost","root","","ensiklopedi");
  ?>

  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="dist/css/bootstrap.min.css">

  <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">

    <!-- Bootstrap core CSS-->
    <link href="dist/table/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="dist/table/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="dist/table/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="dist/table/css/sb-admin.css" rel="stylesheet">

  <title>Ensiklopedia Buah</title>
</head>
<body class="bg-dark">
    
    <!-- navbar -->
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm fixed-top">
      <img class="my-0 mr-md-auto" src="img/logo.png" height="25px">
      <ul class="nav nav-pills">
        <li class="nav-item">
          <a class="nav-link active" href="#">HOME</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
              KATEGORI
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">A</a>
              <a class="dropdown-item" href="#">B</a>
              <a class="dropdown-item" href="#">C</a>
              <a class="dropdown-item" href="#">D</a>
              <a class="dropdown-item" href="#">E</a>
              <a class="dropdown-item" href="#">F</a>
              <a class="dropdown-item" href="#">G</a>
              <a class="dropdown-item" href="#">H</a>
              <a class="dropdown-item" href="#">I</a>
              <a class="dropdown-item" href="#">J</a>
              <a class="dropdown-item" href="#">K</a>
              <a class="dropdown-item" href="#">L</a>
            </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">MANFAAT</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="#">Kesehatan</a>
            <a class="dropdown-item" href="#">Kecantikan</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">TENTANG KAMI</a>
        </li>
      </ul>
    </div><!-- navbar -->

    <main role="main">

      <!-- carousel -->
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="img/bg4.jpg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="img/bg5.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="img/bg6.jpg" alt="Third slide">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div><!-- carousel -->

      <div class="album p-4 bg-light">
        <div class="container" style="margin-top: 30px;">

          <!-- navbar2 -->
          <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
              <ul class="navbar-nav nav nav-pills" id="pills-tab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active" id="pills-all-tab" data-toggle="pill" href="#pills-all" role="tab" aria-controls="pills-all" aria-selected="true">LASTEST</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="pills-makanan-tab" data-toggle="pill" href="#pills-makanan" role="tab" aria-controls="pills-makanan" aria-selected="false">POPULAR</a>
                </li>
                <li class="nav-item">
                  <form class="form-inline my-2 my-2 my-md-0" method="POST">
                    <div class="input-group">
                      <input type="text" name="cari" class="form-control" placeholder="Mencari Tanaman Buah . . ." aria-label="Search" aria-describedby="basic-addon2">
                      <div class="input-group-append">
                        <button class="btn btn-primary" type="submit" name="tombol">
                          <i class="fas fa-search"></i>
                        </button>
                      </div>
                    </div>
                  </form>
                </li>
              </ul>
            </div>
          </nav><!-- navbar2 -->

          <div class="tab-content" id="pills-tabContent">
            <!-- all -->
            <div class="tab-pane fade show active" id="pills-all" role="tabpanel" aria-labelledby="pills-all-tab">
              <div class="row py-5">

                <?php
                  include "koneksi.php";
                  $conn = mysqli_connect("localhost","root","","ensiklopedi");
                 
                 if(isset($_POST["cari"]) && !empty($_POST["cari"])) {
                  $cari = '%'.$_POST["cari"].'%'; }
                  else {$cari = false;} 

                if(isset($_POST['tombol'])){
                $pencarian = mysqli_query($conn, "SELECT * FROM content where nama_buah like '$cari' OR konten like '$cari'");
               
               while($data = mysqli_fetch_array($pencarian)){ 

                $array = array($data['kategori'], $data['konten'], $data['tag']);
            $fuzzy->mesinInferensiTsukamoto($data['kategori'], $data['konten'], $data['tag']);
            $hasilfuzzy = $fuzzy->defuzzyfikasi($array);

        if ($hasilfuzzy>0) 
            { ?>

            <h5>Data Tidak Ditemukan</h5>
    <?php } 

    else { ?>
    <div class="col-md-3">
              <div class="card mb-4 shadow-sm">
                <img class="card-img-top" src="<?php echo $data['gambar']; ?>" >
                <div class="card-body">
                  <h5><?php echo $data['nama_buah']; ?></h5>
<!--                   <p>Rp <?php echo $data['harga']; ?></p> -->
                </div>
              </div>
            </div>
        <?php }} } ?>
                </div>
                <hr>

                <!-- Latest -->
            <div class="row py-5">
             <?php
               $user = mysqli_query($conn, "SELECT * FROM content ");

                                      while($data = mysqli_fetch_array($user)){

            $array = array($data['kategori'], $data['konten'], $data['tag']);
            $fuzzy->mesinInferensiTsukamoto($data['kategori'], $data['konten'], $data['tag']);
            $hasilfuzzy = $fuzzy->defuzzyfikasi($array);

        if ($hasilfuzzy>0) 
            { ?>

            <div class="col-md-3">
              <div class="card mb-4 shadow-sm" style="background-color: #ffff80;">
                <img class="card-img-top" src="<?php echo $data['gambar']; ?>" >
                <div class="card-body">
                  <table  style="margin-top: -10px;"><tr><td>
                  <h5><?php echo $data['nama']; ?></h5></td><td>
                  <img src="img/best2.jpg" height="50"></td></tr></table>
                  <p  style="margin-top: -10px;">Rp <?php echo $data['harga']; ?></p>
                  
                </div>
              </div>
            </div>
    <?php } 

    else { ?>
    <div class="col-md-3">
              <div class="card mb-4 shadow-sm">
                <img class="card-img-top" src="<?php echo $data['gambar']; ?>" >
                <div class="card-body">
                  <h5><?php echo $data['nama_buah']; ?></h5>
                  <!-- <p>Rp <?php echo $data['harga']; ?></p> -->
                  
                </div>
              </div>
            </div>
        <?php }  } ?>
              </div>
            </div><!-- all -->

            <!-- Popular -->
            <div class="tab-pane fade" id="pills-makanan" role="tabpanel" aria-labelledby="pills-makanan-tab">
              <div class="row py-5">

                <?php
                  $conn = mysqli_connect("localhost","root","","ensiklopedi");
                                      
                      $user = mysqli_query($conn, "SELECT * FROM content  ");
                     while($data = mysqli_fetch_array($user)){

                $array = array($data['kategori'], $data['konten'], $data['tag']);
            $fuzzy->mesinInferensiTsukamoto($data['kategori'], $data['konten'], $data['tag']);
            $hasilfuzzy = $fuzzy->defuzzyfikasi($array);

        if ($hasilfuzzy>0) 
            { ?>

            <div class="col-md-3">
              <div class="card mb-4 shadow-sm" style="background-color: #ffff80;">
                <img class="card-img-top" src="<?php echo $data['gambar']; ?>" >
                <div class="card-body">
                  <table  style="margin-top: -10px;"><tr><td>
                  <h5><?php echo $data['nama']; ?></h5></td><td>
                  <img src="img/best2.jpg" height="50"></td></tr></table>
                  <!-- <p  style="margin-top: -10px;">Rp <?php echo $data['harga']; ?></p> -->
                  
                </div>
              </div>
            </div>
    <?php } 

    else { ?>
    <div class="col-md-3">
              <div class="card mb-4 shadow-sm">
                <img class="card-img-top" src="<?php echo $data['gambar']; ?>" >
                <div class="card-body">
                  <h5><?php echo $data['nama_buah']; ?></h5>
                  <!-- <p>Rp <?php echo $data['harga']; ?></p> -->
                  
                </div>
              </div>
            </div>
        <?php } } ?>
              </div>
            </div><!-- makanan -->

        </div>
      </div>
    </main>

    <footer class="text-white bg-dark" style="margin-top: 20px;">
      <div class="container">
        <p class="float-right">
          <a class="text-white" href="#">Back to top</a>
        </p>
        <p>&copy; 2018 Ensiklpoedia Buah</p>
      </div>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="dist/js/jquery-3.3.1.slim.min.js"></script>
    <script src="dist/js/popper.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>

  </body>
</html>