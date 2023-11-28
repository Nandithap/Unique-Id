<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="University_viewstudent.aspx.cs" Inherits="University_viewstudent" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat="server">
    <p>
    <br />
</p>
<p>
    &nbsp;</p>
<table class="style1">
    <tr>
        <td class="style5" style="width: 636px">
            College<asp:DropDownList ID="DropDownList2" runat="server" >
            </asp:DropDownList>
        </td>
        <td class="style11">
            Course</td>
        <td class="style12">
            &nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" 
               >
            
            </asp:DropDownList>
        &nbsp; &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            Batch</td>
        <td class="style10">
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
        </td>
        <td>
            Semester</td>
        <td class="style13">
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Show" />
        </td>
    </tr>
    <tr>
        <td class="style5" style="width: 636px">
                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                        
                            >
                        <Columns>
                            <asp:BoundColumn DataField="Reg_no" HeaderText="Register No"></asp:BoundColumn>
                            <asp:BoundColumn DataField="s_id" HeaderText="Student ID"></asp:BoundColumn>
                            <asp:BoundColumn DataField="s_n" HeaderText="Student Name"></asp:BoundColumn>
                            <asp:BoundColumn DataField="e_add" HeaderText="Email ID"></asp:BoundColumn>
                            <asp:BoundColumn DataField="p_h" HeaderText="Phone No"></asp:BoundColumn>
                            <asp:BoundColumn DataField="p_l" HeaderText="Place"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="Photo">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("pic") %>' 
                                        Width="125px" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn></asp:TemplateColumn>
                            <asp:TemplateColumn></asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                </td>
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
    </tr>
</table>
</form>
</asp:Content>


