<%@ Page Title="" Language="C#" MasterPageFile="~/Public.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <div class="wrap-input100 validate-input m-b-16" data-validate = "Valid email is required: ex@abc.xyz">
						
                        
                         <asp:TextBox ID="TextBox1" class="input100" type runat="server" placeholder="username" ></asp:TextBox>
                     
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-envelope"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">

                         <asp:TextBox ID="TextBox2" class="input100"  runat="server" placeholder="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<div class="contact100-form-checkbox m-l-4">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>
					</div>
					
					<div class="container-login100-form-btn p-t-25">

                     <asp:Button ID="Button1" class="login100-form-btn" runat="server" onclick="Button1_Click" Text="Login" />
						
                        </div>









</asp:Content>

