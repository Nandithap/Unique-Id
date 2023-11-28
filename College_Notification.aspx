<%@ Page Title="" Language="C#" MasterPageFile="~/College.master" AutoEventWireup="true" CodeFile="College_Notification.aspx.cs" Inherits="College_Notification" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server"></form>
    <table class="style1">
    <tr>
        <td>
            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundColumn DataField="NotificationId" HeaderText="Notification ID">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Notification" HeaderText="Notification">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Date" HeaderText="Date"></asp:BoundColumn>
                </Columns>
            </asp:DataGrid>
        </td>
    </tr>
</table>
</asp:Content>

