<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Registration Form | CodingLab </title>--->
    <link rel="stylesheet" href="css/RegistrationFee.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Payment</title>
   </head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
<div class="container">
    <!--<div class="title"><u>Registration Fee</u></div>-->
    <div class="content">
        
        <section class="ui">
            <div class="container-left">
                <div id="credit-card">
                    
                    <form method="post" action="PaymentServlet" class="register-form" id="PaymentServlet-form">
                    
                    <h1>Payment </h1>
                    
                    <div class="number-container">
                        <label>User Name </label>
                        <input type="text" name="user_name" id="user-name"  placeholder="Enter User Name">

                    </div>
                    <div class="name-container" >
                        <label>Transaction Number</label>
                        <input type="number" name="transaction_number" id="transaction-number"  placeholder="Enter Transaction Number">
                    </div>
                    
                    <div class="name-container" >
                        <label>Payment Receipt</label>
                        <input type="file" name="payment_receipt" id="payment-receipt" accept="pdf">
                    </div>
                     <div class="button">
          <input type="submit" value="Pay" name="submit">
         
        </div>
                </form>
                </div>
            </div>
            <div class="container-right">
                <div class="card">
                    <div class="intern">
                        <img class="approximation" src="assets/img/portfolio/aprox.png" alt="aproximation">
                        
                        <div class="exp">
                                <h1>ABC BANK</h1>
                                
                            </div>
                        <div class="card-number">
                            <div class="number-vl">8357972468</div>
                        </div>
                        <div class="card-holder">
                            
                            <div class="name-vl">IFSC : ABC75789363</div>
                        </div>
                        <div class="card-infos">
                            <div class="exp">
                                <h7>A.P Shah INSTITUTE</h7>
                                
                            </div>
                            
                        </div>
                         
                        <img class="chip" src="assets/img/portfolio/scanner.png" alt="chip">
                       
                    </div>
                </div>
            </div>
        </section>
    </div>
   
<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status === "success"){
    swal("Congratulation", "Payment Successful", "success");
            }
</script> 

</body>

</html>