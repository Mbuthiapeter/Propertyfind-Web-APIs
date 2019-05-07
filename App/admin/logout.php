<?php
// Include the database configuration file
    require_once dirname(__FILE__) . '/../include/webHandler.php';
	$db = new DbHandler();
session_start();

	$userId = $_SESSION["userId"];

    $query = $db ->logout();
		
		echo ('<script language="javascript">;');
		echo ('window.location.href = "../../login";');
		echo ('</script>');  
 

?>