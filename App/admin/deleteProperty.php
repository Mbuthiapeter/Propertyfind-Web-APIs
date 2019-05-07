<?php
// Include the database configuration file
    require_once dirname(__FILE__) . '/../include/webHandler.php';
	$db = new DbHandler();

	$property_to_delete_Id = $_REQUEST['propertyId'];

	$url = $db ->getPropertyUrl($property_to_delete_Id);
    if(file_exists("../".$url)){
		unlink("../".$url);
	   }
	 // Get all the uploads to the property
	 $property_uploads = $db -> getPropertyUploads($property_to_delete_Id);
	 foreach($property_uploads as $row){
		 $upload_url = $row['imageUrl'];
		 if(file_exists("../".$upload_url)){
		unlink("../".$upload_url);
	   }
		 $query = $db ->delete_upload($row['id']);
	 }
    $query = $db ->delete_property($property_to_delete_Id);

		echo ('<script language="javascript">;');
		echo ('alert("Message: Property Deleted");');
		echo ('window.location.href = "./";');
		echo ('</script>');
?>