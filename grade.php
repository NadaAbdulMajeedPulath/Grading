<!DOCTYPE html>
<html>

<head>
<style type="text/css">

.left_side 
      {
     float: left;
     margin: 30px 0 0 250px;
      }
.right_side 
     {
     float:right;
     margin: 0px 150px 0px 0px;
     }	  	  
</style>
</head>




<body>

<?php
include 'mainmenu.php';
//Here Faculty can choose order of students based on rollno or total.
//cutoff for each grade is given by the faculty based on which grade is automatically generated.
//ALong with the automatically generated grade  faculty also finds W,I grades where he has to choose a particular grade and submit.
//after submit the values get stored in the database.



$x=0; 
 
if(isset($_POST['submit']))
 {
  foreach($_POST as $key => $value)
    {
	  //echo "<br />".$key;
	  
	  //echo "  ".$value;
	  if($key!="submit")
	  {
	  $rollno=substr($key, 0, 9);
	  //echo "<br />".$rollno;
	  $field=substr($key, 9,2);
	  //echo "<br />".$field;
	  mysqli_query($con,"update course_student set $field='$value' where rollno='$rollno'  ");
	  }
	}
  echo "<b><font color='green'>Grades entered Successfully</font></b>";
  
session_start();  
$course_id=$_SESSION['course_id']; 

echo "<br><br><b><center>COURSE ID  = $course_id </center></b><br> ";
$sql="select * from course_student where course_id='$course_id' order by rollno";
$result = mysqli_query($con,$sql);
 }
 
 
elseif(isset($_POST['rollno']))
{
session_start();
$course_id=$_SESSION['course_id']; 

echo "<br><br><b><center>COURSE ID  = $course_id </center></b><br> ";
$sql="select * from course_student where course_id='$course_id' order by rollno";
$result = mysqli_query($con,$sql);
}

elseif(isset($_POST['total']))
{
 session_start();
$course_id=$_SESSION['course_id']; 

echo "<br><br><b><center>COURSE ID  = $course_id </center></b><br> ";
$sql="select * from course_student where course_id='$course_id' order by tt desc";
$result = mysqli_query($con,$sql);
}

elseif(isset($_POST['grade_cutoff']))
 {
   $temp=0;
   $i=0;
  session_start();
$course_id=$_SESSION['course_id']; 
  foreach($_POST as $key => $value)
    {
	  if($key!="submit")
	  {
	  $array[$i]=$value;
	  $i++;
	  }
	}
	
	for($i=0;$i<5;$i++)
	{
	 if($array[$i]<=0||$array[$i]<$array[$i+1])
	  $temp=1;
	}
	
  if($temp==1)
  {
  echo"<b><font color='red'>Error:Values entered are incorrect.</font></b><br>";
    echo"<b><font color='blue'>NOTE:Enter positive values such that cutoff(S)>cutoff(A) and so on.</font></b>";
  }
  else
  {
   foreach($_POST as $key => $value)
    {
	  if($key!="submit")
	  {
	  $field=$key;
	  mysqli_query($con,"update cutoff set $field='$value' where course_id='$course_id'  ");
	  }
	}
  echo "<b><font color='green'>Cutoff marks for grades are entered Successfully</font></b><br>";
  echo "<b><font color='blue'>NOTE : Along with the grade generated through cutoff you will find W,I grades in the DropDownList .So select the appropriate option and click submit.</font></b>";
  }
	
$sql1="select * from course_student where course_id='$course_id'";
$result1 = mysqli_query($con,$sql1);	

$sql2="select * from cutoff where course_id='$course_id'";
$result2 = mysqli_query($con,$sql2);
$row2 = mysqli_fetch_array($result2);


while($row1 = mysqli_fetch_array($result1))
  {
if($row1['tt']>=$row2['s'])
mysqli_query($con,"update course_student set gr='S' where course_id='$course_id' and rollno = '$row1[rollno]' ");
elseif($row1['tt']<$row2['s']&&$row1['tt']>=$row2['a'])
mysqli_query($con,"update course_student set gr='A' where course_id='$course_id' and rollno = '$row1[rollno]' ");
elseif($row1['tt']<$row2['a']&&$row1['tt']>=$row2['b'])
mysqli_query($con,"update course_student set gr='B' where course_id='$course_id' and rollno = '$row1[rollno]' ");
elseif($row1['tt']<$row2['b']&&$row1['tt']>=$row2['c'])
mysqli_query($con,"update course_student set gr='C' where course_id='$course_id' and rollno = '$row1[rollno]' ");
elseif($row1['tt']<$row2['c']&&$row1['tt']>=$row2['d'])
mysqli_query($con,"update course_student set gr='D' where course_id='$course_id' and rollno = '$row1[rollno]' ");
elseif($row1['tt']<$row2['d']&&$row1['tt']>=$row2['d'])
mysqli_query($con,"update course_student set gr='E' where course_id='$course_id' and rollno = '$row1[rollno]' ");
else
mysqli_query($con,"update course_student set gr='U' where course_id='$course_id' and rollno = '$row1[rollno]' ");
  }
  
  
  echo "<br><br><b><center>COURSE ID  = $course_id </center></b><br> ";
$sql="select * from course_student where course_id='$course_id' order by tt desc ";
$result = mysqli_query($con,$sql);
 }
 
else
{ 
session_start();
// store session data
$_SESSION['course_id']=$_POST['subnog'];
$course_id=$_SESSION['course_id']; 

echo "<br><br><b><center>COURSE ID  = $course_id </center></b><br> ";
$sql="select * from course_student where course_id='$course_id' order by rollno";
$result = mysqli_query($con,$sql);
}
 
?>


<div class="left_side">

<form action='grade.php' method='post' ><table align='center'>
<center><input name ='submit' type="submit" value="Submit"></center>
<?php echo"<br>" ?>
<center>
                <input name='rollno' type="submit" value="Sort by ROLLNO">
                <input name='total' type="submit" value="Sort by TOTAL">
</center>
<?php


echo "<br>
<tr>
<th>ROLL NO</th>
<th>NAME</th>
<th>TOTAL</th>
<th>GRADE</th>
</tr>";


while($row = mysqli_fetch_array($result))
  {
  echo "<tr>";
  echo "<td>" . $row['rollno'] . "</td>";
  $sql2="select * from students where rollnumber='$row[rollno]'";
  $result2 = mysqli_query($con,$sql2);
  $row2 = mysqli_fetch_array($result2);
  echo "<td>" . $row2['name'] . "</td>";
  //echo "<td><input type='number' name='".$row['rollno']."q1' value=".$row['q1']."></td>";
  //echo "<td><input type='number' name='".$row['rollno']."q2'  value=".$row['q2']."></td>";
  //echo "<td><input type='number' name='".$row['rollno']."ss'  value=".$row['ss']."></td>";
  //echo "<td><input type='number' name='".$row['rollno']."ms'  value=".$row['ms']."></td>";
  //echo "<td><input type='number' name='".$row['rollno']."es'  value=".$row['es']."></td>";
  $row['tt']=$row['q1']+$row['q2']+$row['ss']+$row['ms']+$row['es'];
  mysqli_query($con,"update course_student set tt=".$row['tt']." where rollno=".$row['rollno']."  ");
  echo "<td>".$row['tt']."</td>";
    echo '<td><select name="'.$row["rollno"].'gr">
            <option ';
			if($row["gr"]=="S"||$row["gr"]=="A"||$row["gr"]=="B"||$row["gr"]=="C"||$row["gr"]=="D"||$row["gr"]=="E"||$row["gr"]=="U")
			echo 'selected';
			echo '>'.$row["gr"].'</option>';
			
			/*echo '<option ';
			if($row["gr"]=="A")
			echo 'selected';
			echo '>A</option>';
			
			echo '<option ';
			if($row["gr"]=="B")
			echo 'selected';
			echo '>B</option>';
			
			echo '<option ';
			if($row["gr"]=="C")
			echo 'selected';
			echo '>C</option>';
			
			echo '<option ';
			if($row["gr"]=="D")
			echo 'selected';
			echo '>D</option>';
			
			echo '<option ';
			if($row["gr"]=='E')
			echo 'selected';
			echo '>E</option>';
			
			echo '<option ';
			if($row["gr"]=='U')
			echo 'selected';
			echo '>U</option>';*/
			
			echo '<option ';
			if($row["gr"]=='W')
			echo 'selected';
			echo '>W</option>';
			
			echo '<option ';
			if($row["gr"]=='I')
			echo 'selected';
			echo '>I</option>';
			
			echo '</select>
			</td>'; 
  //echo "<td><input type='text'     name='".$row['rollno']."gr' value=".$row['gr']."></td>";
  echo "</tr>";
  }
echo "</table><br>";

echo "<br>";
?>
<center><input name ='submit' type="submit" value="Submit"></center>
</form>

</div>

<div class="right_side">


<form action='grade.php' method='post' ><table align='center'>

<?php
$sql="select * from cutoff where course_id='$course_id'";
$result = mysqli_query($con,$sql);
$row = mysqli_fetch_array($result);

echo "
<tr>
<th>GRADE</th>
<th>CUTOFF MARKS</th>
</tr>";


  echo "<tr>";
  echo "<td>" .'S'. "</td>";
  echo "<td><input name='s' type='number' value=".$row['s']."></td>";
  echo "</tr>";
  
    echo "<tr>";
  echo "<td>" .'A'. "</td>";
  echo "<td><input name='a' type='number' value=".$row['a']."></td>";
  echo "</tr>";
  
    echo "<tr>";
  echo "<td>" .'B'. "</td>";
  echo "<td><input name='b' type='number' value=".$row['b']."></td>";
  echo "</tr>";
  
    echo "<tr>";
  echo "<td>" .'C'. "</td>";
  echo "<td><input name='c' type='number' value=".$row['c']."></td>";
  echo "</tr>";
  
    echo "<tr>";
  echo "<td>" .'D'. "</td>";
  echo "<td><input name='d' type='number' value=".$row['d']."></td>";
  echo "</tr>";
  
    echo "<tr>";
  echo "<td>" .'E'. "</td>";
  echo "<td><input name='e' type='number' value=".$row['e']."></td>";
  echo "</tr>"; 
  echo "</table><br>";
?>

<center>
                <input name='grade_cutoff' type="submit" value="Submit">
</center>

<?php  
echo "</form>";

?>

</div>


</body>
</html>
