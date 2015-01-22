<!DOCTYPE html>
<html>

<body>
<?php
//In this page we find course details of particular faculty along with marks distribution buttons,if we click those buttons it is directed to cutoff.php.

include 'mainmenu.php';

session_start();
  $faculty_id=$_SESSION['faculty_id'];
  $password=$_SESSION['password'];
  

$sql="select * from faculty where faculty_id='$faculty_id' and password='$password'";

$result = mysqli_query($con,$sql);
// Mysql_num_row is counting table row
$count=mysqli_num_rows($result);

if($count==1)
{
$row = mysqli_fetch_array($result);
echo "<br><br><h3>Welcome ". $row['name']."</h3>";
echo "<h4><center>Courses Offered:</center></h4>";
$sql="select * from jan_may_2014_slots where FACULTY='$faculty_id'";
$result = mysqli_query($con,$sql);

echo "<table align='center'>
<tr>
<th>COURSE ID</th>
<th>NAME</th>
<th>ENTER/EDIT MARKS DISTRIBUTION</th>
</tr>";

while($row = mysqli_fetch_array($result))
  {
  echo "<form action='cutoff.php' method='post' >";
  echo "<tr>";
  echo "<td>" . $row['ID'] . "</td>";
  echo "<td>" . $row['NAME'] . "</td>";
  ?>
  <td><input type="hidden" value="<?php echo $row['ID'];?>" name="course" /><input name="course_sub" type="submit" value="Select"></td>
  <?php
  echo "</tr></form>";
  }
echo "</table><br><br>";

}

mysqli_close($con);

?>

</body>
</html>