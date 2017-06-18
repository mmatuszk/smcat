<?php

ini_set('display_errors', 0);

require_once('config.php');

define('EC_STATUS', 'status');
define('EC_DATA', 'data');

define('CMD_ADD_CAT', 'addCat');
define('CMD_RM_CAT', 'rmCat');
define('CMD_GET_CAT_ID', 'getCatId');
define('CMD_GET_ALL_CAT', 'getAllCat');
define('CMD_GET_ALL_REVIEWERS', 'getAllReviewers');
define('CMD_GET_UNASSIGNED_MSGS', 'getUnassignedMessages');

define('EC_STATUS_ERR', 'error');
define('EC_STATUS_SUCCESS', 'success');

define('DB_TB_CAT', 'categories');
define('DB_COL_CAT_ID', 'cat_id');
define('DB_COL_CAT_NAME', 'cat_name');

define('DB_TB_REVIEWERS', 'reviewers');
define('DB_COL_REVIEWER_ID', 'reviewer_id');
define('DB_COL_REVIEWER_NUID', 'reviewer_nuid');

define('DB_TB_MESSAGES', 'messages');
define('DB_COL_MSG_ID', 'msg_id');
define('DB_COL_MSG_ASSIGNED', 'msg_assigned');


function queryAddCategory($cat_name) {
	$query = 'INSERT INTO '.DB_TB_CAT.' ('.DB_COL_CAT_NAME.') ';
	$query .= "VALUES ('".$cat_name."')";
	return $query;
}

function queryGetCatID($cat_name) {
	$query = 'SELECT '.DB_COL_CAT_ID. ' FROM '.DB_TB_CAT.' WHERE ';
	$query .= DB_COL_CAT_NAME."='".$cat_name."'";
	return $query;
}

function queryGetAllCat() {
	$query = 'SELECT * FROM '.DB_TB_CAT;
	return $query;
}

function queryGetAllReviewers() {
	$query = 'SELECT * FROM '.DB_TB_REVIEWERS;
	return $query;
}

function queryGetUnassignedMessages() {
	$query = 'SELECT '.DB_COL_MSG_ID.' FROM '.DB_TB_MESSAGES.' WHERE ';
	$query .= DB_COL_MSG_ASSIGNED.' = false';
	return $query;
}

// echo queryGetUnassignedMessages();
// exit();

$exitCode = array();

$link = mysqli_connect(DB_SERVER, DB_SERVER_USERNAME, DB_SERVER_PASSWORD, DB_DATABASE);
if (mysqli_connect_errno()) {
	$exitCode[EC_STATUS] = EC_STATUS_ERR;
	$exitCode[EC_DATA] = 'Could not connect: ' . mysqli_connect_error();
} else {
	if (isset($_POST['cmd'])) {
		$cmd = $_POST['cmd'];
		if ($cmd == CMD_ADD_CAT) {
				if (isset($_POST['cat_name'])) {
					$cat_name = $_POST['cat_name'];
					$query = queryAddCategory($cat_name);
					if (mysqli_query($link, $query)) {
						$query = queryGetCatID($cat_name);
						$result = mysqli_query($link, $query);
						if (mysqli_num_rows($result) == 1) {
							$row = mysqli_fetch_row($result);
							$exitCode[EC_STATUS] = EC_STATUS_SUCCESS;
							$exitCode[EC_DATA] = $row[0];									
						}	else {
							$exitCode[EC_STATUS] = EC_STATUS_ERR;
							$exitCode[EC_DATA] = 'Add cat something went wrong';
						}			
							
					} else {
						$exitCode[EC_STATUS] = EC_STATUS_ERR;
						$exitCode[EC_DATA] = "Error: " . $query . "<br>" . mysqli_error($link);
					}
				} else {
					$exitCode[EC_STATUS] = EC_STATUS_ERR;
					$exitCode[EC_DATA] = CMD_ADD_CAT. ": cat_name not set";
				}
		}  else if ($cmd == CMD_GET_CAT_ID) {
			if (isset($_POST['cat_name'])) {
				$cat_name = $_POST['cat_name'];
				$query = queryGetCatID($cat_name);
				$result = mysqli_query($link, $query);
				if (mysqli_num_rows($result) == 1) {
					$row = mysqli_fetch_row($result);
					$exitCode[EC_STATUS] = EC_STATUS_SUCCESS;
					$exitCode[EC_DATA] = $row[0];
				} else {
					$exitCode[EC_STATUS] = EC_STATUS_ERR;
					$exitCode[EC_DATA] = CMD_GET_CAT_ID. ": ".mysqli_num_rows($result)." rows returned";
				}
			}
		} else if ($cmd ==CMD_GET_ALL_CAT) {
			$query = queryGetAllCat();
			$result = mysqli_query($link, $query);
			if (mysqli_num_rows($result) > 0) {
				$data = array();
				while ($row = mysqli_fetch_assoc($result)){
					$data[] = $row;
				}
				$exitCode[EC_STATUS] = EC_STATUS_SUCCESS;
				$exitCode[EC_DATA] = json_encode($data);
			} else {
				
			}
		} else if ($cmd == CMD_GET_ALL_REVIEWERS) {
			$query = queryGetAllReviewers();
			$result = mysqli_query($link, $query);
				while ($row = mysqli_fetch_assoc($result)){
					$data[] = $row;
				}
				$exitCode[EC_STATUS] = EC_STATUS_SUCCESS;
				$exitCode[EC_DATA] = json_encode($data);	
			
		} else if ($cmd == CMD_GET_UNASSIGNED_MSGS) {
			$query = queryGetUnassignedMessages();
			$result = mysqli_query($link, $query);
				while ($row = mysqli_fetch_assoc($result)){
					$data[] = $row;
				}
				$exitCode[EC_STATUS] = EC_STATUS_SUCCESS;
				$exitCode[EC_DATA] = json_encode($data);	
			
		} else {
			$exitCode[EC_STATUS] = EC_STATUS_ERR;
			$exitCode[EC_DATA] = $cmd.': Command not recognized';					
		}
	} else {
			$exitCode[EC_STATUS] = EC_STATUS_ERR;
			$exitCode[EC_DATA] = 'no data sent';		
	}

}

echo json_encode($exitCode);


?>