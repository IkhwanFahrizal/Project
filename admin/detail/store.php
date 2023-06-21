<?php
session_start();
require_once '../helper/connection.php';

$ID_Destinasi = $_POST['ID_Destinasi'];
$Deskripsi = $_POST['Deskripsi'];
$Fasilitas = $_POST['Fasilitas'];

$query = mysqli_query($connection, "insert into detail_destinasi (ID_Destinasi, Deskripsi, Fasilitas) 
value('$ID_Destinasi', '$Deskripsi', '$Fasilitas')");
if ($query) {
  $_SESSION['info'] = [
    'status' => 'success',
    'message' => 'Berhasil menambah data'
  ];
  header('Location: ./index.php');
} else {
  $_SESSION['info'] = [
    'status' => 'failed',
    'message' => mysqli_error($connection)
  ];
  header('Location: ./index.php');
}
?>