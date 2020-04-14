<!DOCTYPE html>
<html>
<head>
    <title>TUGAS EXPORT VERA</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body> 
	<?php
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=Data Karyawan.xls");
	?>
 
	<center>
    <h1>PEMROGRAMAN BERBASIS WEB <br/>Export Data MYSQL ke EXCEL</h1>
	</center>
	<table border="1">
		<tr>
            <th> NOMOR </th>
			<th> NAMA </th>
			<th> ALAMAT </th>
			<th> NOMOR TELEPON </th>
            <th> EMAIL </th>
            <th> JENIS KELAMIN </th>
            <th> JABATAN </th>
		</tr>
		<?php 
		$koneksi = mysqli_connect("localhost","root","","karyawan");
		$data = mysqli_query($koneksi,"select * from karyawan");
		$no = 1;
		while($d = mysqli_fetch_array($data)){
		?>
		<tr>
            <td><?php echo $no++; ?></td>
			<td><?php echo $d['nama']; ?></td>
			<td><?php echo $d['alamat']; ?></td>
			<td><?php echo $d['telepon']; ?></td>
            <td><?php echo $d['email']; ?></td>
            <td><?php echo $d['jk']; ?></td>
            <td><?php echo $d['jabatan']; ?></td>
		</tr>
		<?php 
		}
		?>
	</table>
</body>
</html>