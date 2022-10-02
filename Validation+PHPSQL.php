<?php
$alert="";
if(isset($_POST["submit"])){
	if($_POST["user"]=="" || $_POST["pass"]=="") {
		$alert = "Please Enter Details";
	}
	else{
//connectionclass
		class connectionClass extends mysqli{

 	private $host="localhost", $password="", $username="root", $dbName="r&d_tables";
 	public $con;
 	function __construct() {
 		$this->con= $this->connect($this->host, $this->username, $this->password, $this->dbName);
 	}
 }



//registerClass
 //require_once (dirname(__FILE__).'/connectionClass.php');

class registerClass extends connectionClass
{
	public function addRegistrationEntry($data){
		$insert="Insert into try (username, password) values ('$data[user]','$data[pass]')";
		$result=$this->query($insert) or die($this->error);
		if($result){
			return "Data Saved Succesfully, Please close the page.";
		}
		else {
			return "Error saving your data, Please reload the page and try again.";
		}
	}
}

		//include_once 'registerClass.php';
			$registrationClass = new registerClass();
			$alert=$registrationClass->addRegistrationEntry($_POST);
		}
	}
?>
<!--PHP ENDS-->



<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
<h1 class="text-white text-center font-weight-bold bg-success" style="font-size: 55px;"> Complete Form Validation In JavaScript </h1>

	<div class="container"><br>
		
		<div class="col-lg-7 m-auto d-block">
			
			<form action="<?php echo $_SERVER["PHP_SELF"];?>" method="post" class="form-control" onsubmit="return validation()">
				<?php echo $alert; ?>
				<div class="form-group">
					<label for="user" class="font-weight-bold"> Username: </label>
					<input type="text" name="user" class="form-control" id="user" autocomplete="off">
					<span id="username" class="text-danger font-weight-bold"> </span>
					
				</div>

				<div class="form-group">
					<label class="font-weight-bold"> Password: </label>
					<input type="password" name="pass" class="form-control" id="pass" autocomplete="off">
					<span id="passwords" class="text-danger font-weight-bold"> </span>
				</div>

				<input type="submit" name="submit" value="submit" class="btn btn-success" 	autocomplete="off">


			</form><br><br>


		</div>
	</div>


	<script type="text/javascript">
		

		function validation(){

			var user = document.getElementById('user').value;
			var pass = document.getElementById('pass').value;





			if(user == ""){
				document.getElementById('username').innerHTML =" ** Please fill the username field";
				return false;
			}
			if((user.length <= 2) || (user.length > 20)) {
				document.getElementById('username').innerHTML =" ** Username lenght must be between 2 and 20";
				return false;	
			}
			if(!isNaN(user)){
				document.getElementById('username').innerHTML =" ** only characters are allowed";
				return false;
			}



			if(pass == ""){
				document.getElementById('passwords').innerHTML =" ** Please fill the password field";
				return false;
			}
			if((pass.length <= 5) || (pass.length > 20)) {
				document.getElementById('passwords').innerHTML =" ** Passwords lenght must be between  5 and 20";
				return false;	
			}
		}

	</script>

</body>
</html>