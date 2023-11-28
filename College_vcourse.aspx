<%@ Page Title="" Language="C#" MasterPageFile="~/College.master" AutoEventWireup="true" CodeFile="College_vcourse.aspx.cs" Inherits="College_vcourse" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server"></form>
    <table class="style1">
    <tr>
        <td>
            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                >
                <Columns>
                    <asp:BoundColumn DataField="c_id" HeaderText="Course ID"></asp:BoundColumn>
                    <asp:BoundColumn DataField="c_name" HeaderText="Course Name"></asp:BoundColumn>
                    <asp:BoundColumn DataField="c_code" HeaderText="Course Code"></asp:BoundColumn>
                </Columns>
            </asp:DataGrid>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

