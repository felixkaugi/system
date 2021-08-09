<?php
session_start();
//conecting the db 
$con = mysqli_connect('localhost','root','','covidchallange');
//checking if the upload btn is clicked
if (isset($_POST['upload'])) {
	//getting the file name 
	$filename = $_FILES['myfile']['name'];
	//getting file destination 
	$destination = 'uploads/' .$filename;
	//getting the file extension 
	$extension = pathinfo($filename, PATHINFO_EXTENSION);
	//temporaly file location of the uploaded file
	$file = $_FILES['myfile']['tmp_name'];
	$size = $_FILES['myfile']['size'];
	if (!in_array($extension, ['zip','docx','pdf','ppt'])) {
		echo "failed file must be a zip,docx,pdf,ppt";
	}elseif ($_FILES['myfile']['size']>1000000) {
		echo "file too large";
	}else{
		if (move_uploaded_file($file, $destination)) {
			$sql = "INSERT INTO files (name,size,download) VALUES ('$filename','$size',0)";
			$query = mysqli_query($con,$sql);
			echo "file uploaded";
		}else{
				echo "file upload failed";
			}
	}//two things are infinite that is the universe and the human stupidity but am not sure of the universe
}
 ?>