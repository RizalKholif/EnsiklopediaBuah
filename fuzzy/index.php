<?php
    include "koneksi.php";
    include "fuzzy.php";
    include "handler.php";

    //$koneksi = new koneksi();
    $fuzzy = new fuzzy();
    $conn = mysqli_connect("localhost","root","","ensiklopedi");
    // while($getuser = mysqli_fetch_array($user)){

    // $data_training = array();

?>
<form action="" method="post">
    <table border="1">

            <?php
        $query = mysqli_query($conn,"SELECT * FROM content");
        while($data = mysqli_fetch_array($query)) 
        {
            $array = array($data['kategori'], $data['konten'], $data['tag']);
            $fuzzy->mesinInferensiTsukamoto($data['kategori'], $data['konten'], $data['tag']);
            $hasil = $fuzzy->defuzzyfikasi($array);

        ?>
            <tr>
                
                <td><?=$data['nama_buah']?></td>
                <td><?=$hasil?></td>
            </tr>
        <?php
        }
        ?>
    </table>
</form>