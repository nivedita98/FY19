<?php 
$booktitle = filter_input(INPUT_POST, 'booktitle');
$athname = filter_input(INPUT_POST, 'athname');
$coathname = filter_input(INPUT_POST, 'coathname');
$isbnnumber = filter_input(INPUT_POST, 'isbnnumber');
$publication = filter_input(INPUT_POST, 'publication');
$pages_no = filter_input(INPUT_POST, 'pages_no');
$belonging = filter_input(INPUT_POST, 'belonging');
$department_of_book = filter_input(INPUT_POST, 'department_of_book');
$Book_type = filter_input(INPUT_POST, 'Book_type');
$publication_date = filter_input(INPUT_POST, 'publication_date')

if(!empty($booktitle) && !empty($athname) && !empty($coathname) && !empty($isbnnumber) && !empty($publication) && !empty($pages_no) && !empty($belonging) && !empty($department_of_book) && !empty($Book_type) && !empty($publication_date)){

		$host = "localhost";
		$dbusername = "root";
		$dbpassword = "";
		$dbname = "r&d_tables";

		//connection
		$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);

		if (mysqli_connect_error()){
			die('Connect Error ('.mysqli_connect_errno().') '.mysqli_connect_error());
		}
		else{
			$sql = "INSERT INTO books (Title, Author, Co_Author, ISBN_no, Publisher_Name, Publication_date, Number_of_pages, Belongs_to_COE, Department, Book_Type) values ('$booktitle','$athname', '$coathname', '$isbnnumber', '$publication', '$publication_date', '$pages_no', '$belonging', 'department_of_book', '$Book_type')";

			if ($conn->query($sql)) {
			echo '<span style="color:#FF0000;text-align:center;">Details Saved</span>';
		}
			else{
				echo "Error: ".$sql ."<br>" .$conn->error;
			}
			$conn->close();
		}
}
?>