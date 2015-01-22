<!DOCTYPE html>
<html>

<head>
<style>
table,th,td
{
padding:4px;
border:2px solid blue;
border-collapse:collapse;
text-align:center;
}
</style>
<style>
ul
{
list-style-type:none;
margin:0;
padding:0;
}
a:link,a:visited
{
display:block;
font-weight:bold;
color:#FFFFFF;
background-color:#98bf21;
width:200px;
text-align:center;
padding:4px;
text-decoration:none;
text-transform:uppercase;
}
a:hover,a:active
{
background-color:#7A991A;
}
li
{
display:inline;
float:left;
}
</style>
</head>

<body>
<center><img src="home.png" alt="some_text"></center>

<?php         
// this page consists of main menu which is included in every other page;            
echo "<br><br>";
$con=mysqli_connect("localhost","root","root","IIITDM");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>
<ul id="menu">
<li><a href="welcome.php">Home</a></li>
<li><a href="enter_marks.php">Enter Marks</a></li> 
<li><a href="enter_grades.php">Enter Grades</a></li> 
<li><a href="view.php">View</a></li> 
<li><a href="email.php">GENERATE EMAIL</a></li> 
<li><a href="logout.php">Logout</a></li> 
</ul>
<br><br>

</body>
</html>