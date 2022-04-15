<div>Data hitung</div>

<table>
 <tr>
   <td>Nama Kecamatan Titik Hitung</td>
   <td>Jumlah Kasus</td>
   <td>Jarak</td>
   <td>Tahun</td>
   <td>Z / D</td>
   <td>1 / D</td>
   <td>Nilai Z</td>
   <td>RMSE</td>
 </tr>
 <?php 
 foreach ($titikhitung as $ttk) :
  $nilaiz = $ttk['zd'] / $ttk['satud'];
  $rmse = $ttk['jumlahkasus'] - $nilaiz;
  $powrmse = pow($rmse, 2);
?>
  <tr>
  <td><?= $ttk['nama'];?></td>
   <td><?= round($nilaiz);?></td>
   <td><?= $ttk['Jarak'];?></td>
   
   <td><?= $ttk['Tahun'];?></td>
   <td><?= $ttk['zd'];?></td>
   <td><?= $ttk['satud'];?></td>
   <td><?= number_format($nilaiz); ?></td>
   <td><?= $powrmse; ?></td>
 </tr>
 <?php endforeach; ?>
</table>