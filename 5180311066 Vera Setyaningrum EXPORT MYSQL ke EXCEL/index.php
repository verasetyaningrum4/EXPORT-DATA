<!DOCTYPE html>
<html>
<head>
	<title>TUGAS EXPORT VERA</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<center>
		<h1>PEMROGRAMAN BERBASIS WEB <br/>Export Data MYSQL ke EXCEL</h1>
	</center>
    <br>
	<center>
		<a class="btn btn-danger" target="_blank" href="export_excel.php">EXPORT DATA KE EXCEL</a><br>
	</center>
    <br><div class="container">
	<table class="table">
    <thead class="thead-active">
		<tr class="table-primary">
			<th> NOMOR </th>
			<th> NAMA </th>
			<th> ALAMAT </th>
			<th> NOMOR TELEPON </th>
            <th> EMAIL </th>
            <th> JENIS KELAMIN </th>
            <th> JABATAN </th>
		</tr>
    </thead>
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
    </div>
</body>
</html>