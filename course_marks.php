<!DOCTYPE html>
<html>

<body>
<?php
include 'mainmenu.php';
//Faculty enters marks for each rollno and clicks on submit.
//When submitted the values are checked with cutoff values and then stored in database.
//If the valued are exceeding cutoff then error message is shown.
if(isset($_POST['submit']))
 {
 session_start();
 $course_id=$_SESSION['course_id'];
 
  $x=1;
      foreach($_POST as $key => $value)
      {
	  //echo "<br />".$key;
	  
	  //echo "  ".$value;
	  if($key!="submit")
	  {
	  $rollno=substr($key, 0, 9);
	  $field=substr($key, 9,2);
	  //echo $field;
	  $sql="select * from cutoff where course_id='$course_id'";
	  $result = mysqli_query($con,$sql);
	  $row = mysqli_fetch_array($result);
	  $c="c";
	  $temp=$field.$c;
	  //echo $temp;
	  //echo $row[$temp];
	  if($value>$row[$temp]||$value<0)
	   {
	    $x=0;
		echo "<b><font color='blue'>$key is invalid.<br></font></b>";
		//$error_css='background-color:red';
	   }
	  else
	   {
	    mysqli_query($con,"update course_student set $field='$value' where rollno='$rollno'  ");
	   }
	  }
	  }
	  
  if($x==1)
  {
	  $sql2 ="select * from course_student where course_id='$course_id'";
	  $result2 = mysqli_query($con,$sql2);
      while($row2 = mysqli_fetch_array($result2))
	  {
	  $row=$row2['q1']+$row2['q2']+$row2['ss']+$row2['ms']+$row2['es'];
	  $rollno=$row2['rollno'];
      mysqli_query($con,"update course_student set tt='$row' where rollno='$rollno'");
	  }
 
    echo"<b><font color='green'>Marks saved Successfully.</font></b>";
  }
  else
  {    
   echo"<b><font color='red'>Error:The values entered exceeding cutoff values were changed to previous value.</font></b>";
   }
   
  } 
 
 /////////////////////////////////////////////////////////////////////////////
 
 
else
{
session_start();
$_SESSION['course_id']=$_POST['subno'];
$course_id=$_SESSION['course_id'];
}

$sql1="select * from cutoff where course_id='$course_id'";
$result1 = mysqli_query($con,$sql1);
$row1 = mysqli_fetch_array($result1);


if($row1['q1c']==0&&$row1['q2c']==0&&$row1['ssc']==0&&$row1['msc']==0&&$row1['esc']==0)
 {
echo "<br><br><br><br><br><br><br><br><b><center><font color='red'>NOTE : Please Enter Marks Distribution for this course in HOME page before entering marks.</font></center></b>";
exit;
 }
 
 

echo "<br><br><b><center>COURSE ID  = $course_id </center></b><br><br> ";
$sql="select * from course_student where course_id='$course_id' order by rollno";
$result = mysqli_query($con,$sql);
echo "<form action='course_marks.php' method='post' ><table align='center'>
<tr>
<th>ROLL NO</th>
<th>NAME</th>";
if($row1['q1c']>0)
echo '<th>QUIZ 1</th>';
if($row1['q2c']>0)
echo '<th>QUIZ 2</th>';
if($row1['ssc']>0)
echo '<th>ASSIGNMENT</th>';
if($row1['msc']>0)
echo '<th>MID SEM</th>';
if($row1['esc']>0)
echo '<th>END SEM</th>';
echo '</tr>';


while($row = mysqli_fetch_array($result))
  {
  echo "<tr>";
  echo "<td>" . $row['rollno'] . "</td>";
  $sql2="select * from students where rollnumber='$row[rollno]'";
  $result2 = mysqli_query($con,$sql2);
  $row2 = mysqli_fetch_array($result2);
  echo "<td>" . $row2['name'] . "</td>";
  if($row1['q1c']>0)
  echo "<td><input type='number' name='".$row['rollno']."q1' value=".$row['q1']."></td>";
  if($row1['q2c']>0)
  echo "<td><input type='number' name='".$row['rollno']."q2'  value=".$row['q2']."></td>";
  if($row1['ssc']>0)
  echo "<td><input type='number' name='".$row['rollno']."ss'  value=".$row['ss']."></td>";
  if($row1['msc']>0)
  echo "<td><input type='number' name='".$row['rollno']."ms'  value=".$row['ms']."></td>";
  if($row1['esc']>0)
  echo "<td><input type='number' name='".$row['rollno']."es'  value=".$row['es']."></td>";
 // ".$row['tt']."=$row['q1']+$row['q2']+$row['ss']+$row['ms']+$row['es']
 // echo "<td><input type='number' name='".$row['rollno']."tt'  value=".$row['tt']."></td>";
  //echo "<td><input type='text' value=".$row['grade']."></td>";
  echo "</tr>";
  }
echo "</table><br><br >";

?>


<center><input name ='submit' type="submit" value="Submit"></form></center>

</body>
</html>
