<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="task_27_12_asp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class=" main"; style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

               

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                           <label class="form-label" for="form3Example1c">Your Name</label>
                    
                        <asp:TextBox ID="form3Example1c" class="form-control" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="you must write your name" ControlToValidate="form3Example1c" CssClass="error" ValidationGroup="register">*</asp:RequiredFieldValidator>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                              <label class="form-label" for="form3Example3c">Your Email</label>
            
                        <asp:TextBox ID="form3Example3c" class="form-control" runat="server"></asp:TextBox>
                   
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="you must write your email" CssClass="error" ControlToValidate="form3Example3c" ValidationGroup="register">*</asp:RequiredFieldValidator>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example4c">Password</label>
                     
                        <asp:TextBox ID="form3Example4c" type="password" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="you must write your password" ControlToValidate="form3Example4c" CssClass="error" ValidationGroup="register">*</asp:RequiredFieldValidator>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                         <label class="form-label" for="form3Example4cd">Repeat your password</label>
                        <asp:TextBox ID="form3Example4cd" type="password" class="form-control" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password not match" ControlToCompare="form3Example4c" ControlToValidate="form3Example4cd" CssClass="error" ValidationGroup="register" >*</asp:CompareValidator>
                         <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Re-enter your password" ValidationGroup="register" CssClass="error" ControlToValidate="form3Example4cd">*</asp:RequiredFieldValidator>
                    </div>
                  </div>

                  <div class="form-check d-flex justify-content-center mb-5">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                    <label class="form-check-label" for="form2Example3">
                      I agree all statements in <a href="#!">Terms of service</a>
                    </label>
                  </div>

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
              
                      <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Register" ValidationGroup="register" OnClick="Button1_Click" />
                  </div>

            
              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" ValidationGroup="register" />
      </div>
    </div>
  </div>
</section>
    <br />
    <div class="container" >
 
  <!-- Email input -->
  <div class="form-outline mb-4">
     <asp:TextBox ID="form2Example1" runat="server" class="form-control"></asp:TextBox>
    <label class="form-label" for="form2Example1">Email address</label>
     
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="you must write your email" ControlToValidate="form2Example1" CssClass="error" ValidationGroup="login">*</asp:RequiredFieldValidator>
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">

      <asp:TextBox ID="form2Example2" type="password" runat="server"  class="form-control"></asp:TextBox>
    <label class="form-label" for="form2Example2">Password</label>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="you must write your password" ControlToValidate="form2Example2" CssClass="error" ValidationGroup="login">*</asp:RequiredFieldValidator>
  </div>

  <!-- 2 column grid layout for inline styling -->
  <div class="row mb-4">
    <div class="col d-flex justify-content-center">
      <!-- Checkbox -->
      <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
        <label class="form-check-label" for="form2Example31"> Remember me </label>
      </div>
    </div>

    <div class="col">
      <!-- Simple link -->
      <a href="#!">Forgot password?</a>
    </div>
  </div>

  <!-- Submit button -->
  
        <asp:Button ID="Button2" class="btn btn-primary btn-block mb-4" runat="server" Text="Sig in" ValidationGroup="login" OnClick="Button2_Click" />

  <!-- Register buttons -->
  <div class="text-center">
    <p>Not a member? <a href="#!">Register</a></p>
      <p>
          or sign up with:</p>
    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-facebook-f"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-google"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-twitter"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-github"></i>
    </button>
  </div>

        </div>
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" CssClass="error" ValidationGroup="login" />
</asp:Content>
