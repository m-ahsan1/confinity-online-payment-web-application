<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payBill.aspx.cs" Inherits="WebApplication6.WebForm1" %>

<!DOCTYPE html>
<html lang="en">

  <head runat="server" >

    <meta charset="utf-8">
    <meta name="author" content="templatemo">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <title>Transaction History</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-snapx-photography.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
<!--



-->
  </head>

<body>

    <form id="form1" runat="server">
  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      <!-- ***** Logo Start ***** -->
                      <a href="index.html" class="logo">
                          <img src="assets/images/logo.png" alt="SnapX Photography Template">
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                          <li><a href="index.html">Home</a></li>
                          <li class="has-sub">
                              <a href="javascript:void(0)" class="active">Photos &amp; Videos</a>
                              <ul class="sub-menu">
                                  <li><a href="contests.html">Contests</a></li>
                                  <li><a href="contest-details.html">Single Contest</a></li>
                              </ul>
                          </li>
                          <li><asp:HyperLink NavigateUrl="payBill.aspx" Text="Pay Bills" runat="server" /></li>
                          
                          <li><asp:HyperLink NavigateUrl="requestLoan.aspx" Text="Request Loan" runat="server" /></li>

                          <li><asp:HyperLink NavigateUrl="Transaction.aspx" Text="Send Money" runat="server" /></li>
                          <li><asp:HyperLink NavigateUrl="view_income_statement.aspx" Text="View Transactions" runat="server" /></li>
                          <li><asp:HyperLink NavigateUrl="ServiceApproval.aspx" Text="Services" runat="server" /></li>
                          <li><asp:HyperLink NavigateUrl="request_services.aspx" Text="Request Services" runat="server" /></li>
                         
                      </ul>   
                      <div class="border-button">
                        <asp:HyperLink NavigateUrl="SignUp.aspx" Text="Sign Up" runat="server" /></a>
                          <asp:HyperLink NavigateUrl="LoginUser.aspx" Text="Login" runat="server" /></a>
                      </div>
                      <a class='menu-trigger'>
                          <span>Menu</span>
                      </a>
                      <!-- ***** Menu End ***** -->
                  </nav>
              </div>
          </div>
      </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <div id="modal" class="popupContainer" style="display:none;">
    <div class="popupHeader">
        <span class="header_title">Login</span>
        <span class="modal_close"><i class="fa fa-times"></i></span>
    </div>

    <section class="popupBody">
        <!-- Social Login -->
        <div class="social_login">
            <div class="">
                <a href="#" class="social_box fb">
                    <span class="icon"><i class="fab fa-facebook"></i></span>
                    <span class="icon_title">Connect with Facebook</span>

                </a>

                <a href="#" class="social_box google">
                    <span class="icon"><i class="fab fa-google-plus"></i></span>
                    <span class="icon_title">Connect with Google</span>
                </a>
            </div>

            <div class="centeredText">
                <span>Or use your Email address</span>
            </div>

            <div class="action_btns">
                <div class="one_half"><a href="#" id="login_form" class="btn">Login</a></div>
                <div class="one_half last"><a href="#" id="register_form" class="btn">Sign up</a></div>
            </div>
        </div>

        <!-- Username & Password Login form -->
        <div class="user_login">
            <form action="" method="post">
                <label>Email / Username</label>
                <input name="username" type="text" id="username" />
              <br />

                <label>Password</label>
                <input name="password" type="password" id="password" />
              <br />

                <div class="checkbox">
                    <input id="remember" type="checkbox" />
                    <label for="remember">Remember me on this computer</label>
                </div>

                <div class="action_btns">
                    <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                    <div class="one_half last"><button type="submit" class="btn btn_red">Login</button></div>
                </div>
            </form>

            <a href="#" class="forgot_password">Forgot password?</a>
        </div>

        <!-- Register Form -->
        <div class="user_register">
            <form action="" method="post">
                <label>Username</label>
                <input name="username" type="text" id="username" />
                <br />

                <label>Email Address</label>
                <input name="email" type="email" id="email" />
                <br />

                <label>Password</label>
                <input name="password" type="password" id="password" />
                <br />

                <div class="checkbox">
                    <input id="send_updates" type="checkbox" />
                    <label for="send_updates">Send me occasional email updates</label>
                </div>

                <div class="action_btns">
                    <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                    <div class="one_half last"><button type="submit" class="btn btn_red">Register</button></div>
                </div>
            </form>
        </div>
        
    </section>
  </div>

  <div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 offset-lg-2 header-text">
          <h2>Bills</h2>
          <p>You have the following bills to pay.</p>
          
        </div>
      </div>
    </div>
  </div>
        

  <div class="top-categories">
    <div class="container">
      <div class="row" style="color: white">
       
           
        
            <asp:GridView ID ="ItemGrid1" HorizontalAlign="Center"  ItemStyle-Width="100%" runat="server" ></asp:GridView>
      
      
            <p>PAY BILL</p>
            <asp:TextBox ID="txtBillID" hint="Enter bill ID" runat="server"></asp:TextBox>

            
                <center>  <asp:Label ID="payBillButton1" runat="server" ></asp:Label></center>
          
                <div class="col-lg-12">
                <fieldset>
                    <asp:Button ID="payBillButton" HorizontalAlign="center" runat="server" Text="PAY" BorderColor="#00ccff" BackColor="#00ccff" class="orange-button" PostBackUrl="~/checkTransaction.aspx" OnClick="payBillButtonClick"/>
                  
                </fieldset>
                </div>
            
      </div>
    </div>
  </div>

 
    
      </form>
  </body>
</html>