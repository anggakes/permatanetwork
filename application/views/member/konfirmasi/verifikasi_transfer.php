<?php 
if(isset($_SESSION['message'])):
?>
<div class='alert alert-<?= ($_SESSION['sukses']) ? 'success' : 'danger'?>'>
<?= $_SESSION['message']?>
</div>
<?php endif; ?>



<?php 
	
	if($transfer->data->status_transfer == 0){

		"Belum Melakukan transfer"
	}else{

		include_once('riwayat_transfer.php');
	}

?>