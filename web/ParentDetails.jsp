<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/Education.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Parent Details</title>
   </head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
  <div class="container">
    <div class="title"><u>Parent Details</u></div>
    <div class="content">

        <form method="post" action="ParentDetServ" class="register-form"
							id="ParentDetailServ-form">
           
            <legend><h4 class="title">Father's Detail</h4></legend>
        <div class="user-details">
          <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" name="firstname" placeholder="Enter your name" class="fname" required>
          </div>
           
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" name="lastname" placeholder="Enter Last Name" class="lname" required>
          </div>
         
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="phonenumber" placeholder="Enter your number" class="number" required>
          </div>
          <div class="input-box">
            <span class="details">Email ID</span>
            <input type="text" name="emailid" placeholder="Enter your email" class="email"  required>
          </div>
          <div class="input-box">
            <span class="details">Date Of Birth</span>
            <input type="date" name="dateofbirth" class="dob" required>
          </div>
            <div class="input-box">
            <span class="details">Address </span>
            <input type="text" name="address1" placeholder="Street Address" class="add1" required>
            <input type="text" name="address2" placeholder="Street Address Line 2" class="add2" required>
            <input type="text" name="city1" placeholder="City" class="city" required>
            <input type="text" name="region1" placeholder="Region" class="region" required>
            <input type="text" name="zip1" placeholder="Postal/Zip Code" class="zip" required>
            <input type="text" name="country1" placeholder="Country" class="country" required>
            
           </div>
           
           
          <div class="input-box">
            <span class="details">Job Title</span>
            <input type="text" name='jobrole' placeholder="Enter your Job role" class="job" required>
          </div>
          <div class="input-box">
            <span class="details">Office Address </span>
            <input type="text" name="officeaddress" placeholder="Street Address" class="officeadd" required>
          </div>
          <div class="input-box">
            <span class="details">Office Number</span>
            <input type="text" name="officenumber" placeholder="Enter your number" class="officeno" required>
          </div>
          <div class="input-box">
            <span class="details">Annual Salary</span>
            <input type="text" name="annualsalary" placeholder="Enter your annual salary" class="salary" required>
          </div>
            
          <div class="input-box">
            <span class="details">Upload Photo</span>
            <input type="file" name="photograph" accept="png" class="photo" required>
          </div>
            
         <div class="input-box">
            <span class="details">Upload Signature</span>
            <input type="file" name="signature" accept="png" class="sign" required>
          </div>
        
            
            
        
          
            <legend><h4 class="title">Mother's Detail</h4></legend>
         <div class="user-details">
          <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" name="mfirstname" placeholder="Enter your name" class="mfname" required>
          </div>
           
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" name="mlastname" placeholder="Enter Last Name" class="mlname" required>
          </div>
         
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="mphonenumber" placeholder="Enter your number" class="mnumber" required>
          </div>
          <div class="input-box">
            <span class="details">Email ID</span>
            <input type="text" name="memailid" placeholder="Enter your email" class="memail"  required>
          </div>
          <div class="input-box">
            <span class="details">Date Of Birth</span>
            <input type="date" name="mdateofbirth" class="mdob" required>
          </div>
            <div class="input-box">
            <span class="details">Address </span>
            <input type="text" name="maddress1" placeholder="Street Address" class="madd1" required>
            <input type="text" name="maddress2" placeholder="Street Address Line 2" class="madd2" required>
            <input type="text" name="mcity1" placeholder="City" class="mcity" required>
            <input type="text" name="mregion1" placeholder="Region" class="mregion" required>
            <input type="text" name="mzip1" placeholder="Postal/Zip Code" class="mzip" required>
            <input type="text" name="mcountry1" placeholder="Country" class="mcountry" required>
            
           </div>
           
           
          <div class="input-box">
            <span class="details">Job Title</span>
            <input type="text" name="mjobrole" placeholder="Enter your Aadhar No." class="mjob" required>
          </div>
          <div class="input-box">
            <span class="details">Office Address </span>
            <input type="text" name="mofficeaddress" placeholder="Street Address" class="mofficeadd" required>
          </div>
          <div class="input-box">
            <span class="details">Office Number</span>
            <input type="text" name="mofficenumber" placeholder="Enter your number" class="mofficeno" required>
          </div>
          <div class="input-box">
            <span class="details">Annual Salary</span>
            <input type="text" name="mannualsalary" placeholder="Enter your annual salary" class="msalary" required>
          </div>
            
          <div class="input-box">
            <span class="details">Upload Photo</span>
            <input type="file" name="mphotograph" accept="png" class="mphoto" required>
          </div>
            
         <div class="input-box">
            <span class="details">Upload Signature</span>
            <input type="file" name="msignature" accept="png" class="msign" required>
          </div>
        
            
        
        
        <div class="button">
          <input type="submit" value="Submit">
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
</script> 

</body>

</html>