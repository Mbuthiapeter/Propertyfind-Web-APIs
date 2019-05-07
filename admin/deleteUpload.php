<?php
// Include the database configuration file
    require_once dirname(__FILE__) . '/../include/webHandler.php';
	$db = new DbHandler();

	$uploadId = $_POST['upload'];
    $url = $db ->getUploadUrl($uploadId);
    if(file_exists("../".$url)){
		unlink("../".$url);
	   }
    $query = $db ->delete_upload($uploadId);
?>