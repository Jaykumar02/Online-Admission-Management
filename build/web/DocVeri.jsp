<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document Verification</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/Document.css">
</head>

<body>
    <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">

    <main class="table">
        <section class="table__header">
            <h1>Document Verification</h1>
        </section>
         <form method="post" action="DocuVeri" class="register-form"
							id="DocuVeri-form">
        <section class="table__body">
            <table>
                <thead>
                    <tr>
                        <th> Id </th>
                        <th> Document </th>
                        <th> Type </th>
                        <th> Upload  </span></th>
                        
                    </tr>
                </thead>
                <tbody>
                    
                    <tr>
                        <td> 1 </td>
                        <td> Enter User Name</td>
                        <td> </td>
                        <td> <input type="text" name="username3" placeholder="Enter User Name" class="status delivered" > </td>
                        
                    </tr>
                    
                    <tr>
                        <td> 2 </td>
                        <td> SSC Marksheet</td>
                        <td><img src="images/pdf.png" alt=""> PDF </td>
                        <td> <input type="file" name="file1" accept="pdf" class="status delivered"> </td>
                        
                    </tr>
                    
                    <tr>
                        <td> 3 </td>
                        <td> HSC Marksheet</td>
                        <td><img src="images/pdf.png" alt=""> PDF </td>
                        <td> <input type="file" name="file2" accept="pdf" class="status delivered"> </td>
                        
                    </tr>
                    
                    <tr>
                        <td> 4 </td>
                        <td> HSC Leaving Certificate</td>
                        <td><img src="images/pdf.png" alt=""> PDF </td>
                        <td> <input type="file" name="file3" accept="pdf" class="status delivered"> </td>
                        
                    </tr>
                    
                    <tr>
                        <td> 5 </td>
                        <td> Aadhar Card</td>
                        <td><img src="images/pdf.png" alt=""> PDF </td>
                        <td> <input type="file" name="file4" accept="pdf" class="status delivered"> </td>
                        
                    </tr>
                    
                    <tr>
                        <td> 6 </td>
                        <td> Cast Certificate</td>
                        <td><img src="images/pdf.png" alt=""> PDF </td>
                        <td> <input type="file" name="file5" accept="pdf" class="status delivered"> </td>
                        
                    </tr>
                    
                    <tr>
                        <td> 7 </td>
                        <td> Photo</td>
                        <td><img src="images/export.png" alt=""> PNG </td>
                        <td> <input type="file" name="file6" accept="png" class="status delivered"> </td>
                        
                    </tr>
                    
                    <tr>
                        <td> 8 </td>
                        <td> Sign</td>
                        <td><img src="images/export.png" alt=""> PNG </td>
                        <td> <input type="file" name="file7" accept="png" class="status delivered"> </td>
                        
                    </tr>
                    
                    
                    
                </tbody>
                
            </table>
            
        </section>
               <div class="button">
          <input type="submit" value="Submit">
        </div>
    </main>
    <script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status === "success"){
    swal("Congrats", "Document Submited", "success");
            }
</script> 
    
    
</body>

</html>