<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
   
    <link rel="stylesheet" href="css/Education.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Education Details</title>
   </head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
  <div class="container">
    <div class="title"><u>Education Details</u></div>
    <div class="content">

        <form method="post" action="EducationServ" class="register-form">
          
        <div class="user-details">
            
            <div class="input-box">
            <span class="details">Name</span>
            <input type="text" name="user1" placeholder="Enter Full Name" class="lname" >
          </div> 
            
           <div class="input-box">
               <span class="details"> Select Year : </span> 
                <select id="mySelect" name="eduyear" onchange="printAnswer()">
                <option value="Select">Select</option>
		<option value="FE (FIRST YEAR)">FE (FIRST YEAR)</option>
		<option value="SE (SECOND YEAR)">SE (SECOND YEAR)</option>
		<option value="TE (THIRD YEAR)">TE (THIRD YEAR)</option>
                <option value="BE (Fourth YEAR)">TE (THIRD YEAR)</option>
             </select>
           
            	<input type="text" name="eduyear" id="answerBox">
          </div>
            
        
            
          <div class="input-box">
            <span class="details"> Select Branch : </span>
             <select id="mySelect2" name="edubranch" onchange="printAnswer2()">
                <option value="Select">Select</option>
		<option value="Computer Science">Computer Science</option>
		<option value="Information Technology">Information Technology</option>
                <option value="Civil Engineering">Civil Engineering</option>
                <option value="Mechanical Engineering">Mechanical Engineering</option>
                
             </select>
            
            	<input type="text" name="edubranch" id="answerBox2">
          </div>
           
        
           
            
            <legend><h4 class="title" align="center">SSC Details</h4></legend>
         <div class="user-details">
          <div class="input-box">
            <span class="details"> Board Of Education : </span>
             <select id="mySelect3" name="eduboard" onchange="printAnswer3()">
                <option value="Select">Select</option>
		<option value="State Board of Maharashtra">State Board of Maharashtra</option>
		<option value="CBSC Board">CBSC Board</option>
                <option value="ICSC Board">ICSC Board</option>
                <option value="OTHERS">OTHERS</option>
             </select>
            
            	<input type="text" name="eduboard" id="answerBox3">
          </div>
            
          <div class="input-box">
            <span class="details">Institute/School Name</span>
            <input type="text" name="school" placeholder="Enter Institute/School Name" class="lname" >
          </div> 
          
            
           <div class="input-box">
            <span class="details">SSC Percentage</span>
            <input type="number" name="ssc" placeholder="Enter SSC Percentage" class="lname" >
          </div> 
            
           <div class="input-box">
            <span class="details">Upload SSC Marksheet</span>
            <input type="file" name="sscphoto" accept="pdf" >
          </div> 
        
            
             
             
             
             
              <legend><h4 class="title">HSC Detail</h4></legend>
         <div class="user-details">
           <div class="input-box">
            <span class="details"> Board Of Education : </span>
             <select id="mySelect4" name="hboard" onchange="printAnswer4()">
                <option value="Select">Select</option>
		<option value="State Board of Maharashtra">State Board of Maharashtra</option>
		<option value="CBSC Board">CBSC Board</option>
                <option value="ICSC Board">ICSC Board</option>
                <option value="OTHERS">OTHERS</option>
             </select>
            	<input type="text" name="hboard" id="answerBox4">
          </div>
            
          <div class="input-box">
            <span class="details">Institute/College Name</span>
            <input type="text" name="college" placeholder="Enter Institute/College Name" class="lname" >
          </div> 
            
           <div class="input-box">
            <span class="details">HSC Percentage</span>
            <input type="number" name="hsc" placeholder="Enter HSC Percentage" class="lname" >
          </div> 
            
           <div class="input-box">
            <span class="details">Upload HSC Marksheet</span>
            <input type="file" name="hscphoto" accept="pdf" >
          </div> 
             
             
             
             
             
              <legend><h4 class="title">Other Exams Detail</h4></legend>
         <div class="user-details">
          <div class="input-box">
            <span class="details">CET Marks</span>
            <input type="number" name="cet" placeholder="Enter Marks" class="lname" >
          </div> 
            
           <div class="input-box">
            <span class="details">Upload CET Marksheet</span>
            <input type="file" name="cphoto" accept="pdf" >
          </div> 
            
            
           <div class="input-box">
            <span class="details">JEE Marks</span>
            <input type="number" name="jee" placeholder="Enter Marks" class="lname" >
          </div> 
            
           <div class="input-box">
            <span class="details">Upload JEE Marksheet</span>
            <input type="file" name="jphoto" accept="pdf" >
          </div> 
            
            
           <div class="input-box">
            <span class="details">JEE Advance Marks</span>
            <input type="number" name="jeeadv" placeholder="Enter Marks" class="lname" >
          </div> 
            
           <div class="input-box">
            <span class="details">Upload JEE Advance Marksheet</span>
            <input type="file" name="japhoto" accept="pdf" >
          </div> 
          
       <div class="button">
          <input type="submit" value="Submit" name="submit">
         
        </div>
             
      </form>
    </div>
  </div>
 
<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status === "success"){
    swal("Congrats", "Completed", "success");
            }
            
            function printAnswer() {
			var selectBox = document.getElementById("mySelect");
			var answerBox = document.getElementById("answerBox");
			answerBox.value = selectBox.value;
		}
                
               
            function printAnswer2() {
			var selectBox2 = document.getElementById("mySelect2");
			var answerBox2 = document.getElementById("answerBox2");
			answerBox2.value = selectBox2.value;
		}
                
            function printAnswer3() {
			var selectBox3 = document.getElementById("mySelect3");
			var answerBox3 = document.getElementById("answerBox3");
			answerBox3.value = selectBox3.value;
		}
                
            function printAnswer4() {
			var selectBox4 = document.getElementById("mySelect4");
			var answerBox4 = document.getElementById("answerBox4");
			answerBox4.value = selectBox4.value;
		}
</script> 
</body>

</html>