<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result_publish.aspx.cs" Inherits="Result_publish" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script language="javascript" type="text/javascript">
    function printDiv(divID) {
        //Get the HTML of div
        var divElements = document.getElementById(divID).innerHTML;
        //Get the HTML of whole page
        var oldPage = document.body.innerHTML;

        //Reset the page's HTML with div's HTML only
        document.body.innerHTML =
              "<html><head><title></title></head><body>" +
              divElements + "</body>";

        //Print Page
        window.print();

        //Restore orignal HTML
        document.body.innerHTML = oldPage;


    }
    </script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            font-size: medium;
        }
        .style5
        {
            text-align: right;
            font-size: small;
            width: 99%;
        }
        .style6
        {
            width: 626px;
        }
        .style10
        {
            height: 78px;
        }
        .style11
        {
            height: 88px;
        }
        .style12
        {
            width: 300px;
            height: 339px;
        }
        .style13
        {
            text-align: center;
        }
        .style14
        {
            text-align: center;
            font-size: large;
        }
        .style16
        {
            text-align: center;
            font-size: xx-large;
        }
        .style17
        {
            text-align: center;
            font-size: x-large;
        }
        .style18
        {
            text-align: center;
            font-size: larger;
        }
        .style19
        {
            font-size: xx-large;
        }
        .style20
        {
            width: 185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="printablediv">

    
            <table class="style1">
                <tr>
                    <td colspan="2" class="style10" style="font-weight: 700; text-align: center">
                        <img alt="" class="style12" 
                            src="file:///C:/Users/User/Desktop/Kannur%20university-logo%20-%20Kannur%20University%20-%20Wikipedia_files/Kannur_university-logo.png" />&nbsp;</td>
                    <td width="1%" class="style10">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style11" style="text-align: center">
                        <span class="style19"><strong>&nbsp;KANNUR UNIVERSITY</strong></span><strong><br 
                            class="style19" />
                        </strong></td>
                    <td class="style11">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="font-weight: 700; text-align: center">&nbsp;
                        </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style4" style="text-align: center">
                    <p class="style16"><strong style="font-size: x-large">FACULTY OF SCIENCE</strong></p>
                        <p class="style16">&nbsp;</p>
                        <p class="style14">Where as it has been certified by duly appointed examiner 
                            that...........................(.name)................................is qualified to 
                            recieve the degree of</p>
                        <p class="style14">Bachelor of Science (B.sc)in Branch 
                            .........................................................(course)............................he/she 
                            having been placed in.......(rank awarded)...............</p>
                        <p class="style14">at the examination held in 
                            .............................................................(year&amp;month)......................................................(Reg 
                            No...................................)</p>
                        <p style="font-size: larger">&nbsp;</p>
                        <p class="style13">The Senate of the University of Kannur here by confer on him/her 
                            Degree of</p>
                        <p class="style17"><strong>BACHELOR&nbsp; OF&nbsp; SCIENCE </strong></p>
                        <p class="style18">with all the Rights, Privilege and Honours there into appearing.</p>
                        <p class="style18">Given under the seal of the University </p>
                        <p class="style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
                        <p class="style18">&nbsp;</p>
                        <p class="style17">&nbsp;</p>
                        <p class="style17">&nbsp;</p>
                        <p class="style13">&nbsp;</p></td>
                    <td>&nbsp; </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <table class="style1">
                            <tr>
                                <td width="206">
                                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
&nbsp;</td>
     <td width="624" class="style6"> &nbsp;</td>
                                <td width="216">
                                    
                                        
                              &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        <asp:TextBox ID="input" runat="server"></asp:TextBox>
                    </td>
                    <td class="style5">Vice-Chancellor</td>
                    <td>&nbsp;
                        </td>
                </tr>
            </table>

    
    </div>
     <input type="button" value="Print 1st Div" onClick="javascript:printDiv('printablediv')" />
    </form>
</body>
</html>
