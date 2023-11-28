<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="University_Notification.aspx.cs" Inherits="University_Notification" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <asp:MultiView ID="MultiView1" runat="server" 
       >
        <br />
        <asp:View ID="View1" runat="server">
            <br />
            <table class="style1">
                <tr>
                    <td>
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                                        onitemcommand="DataGrid1_ItemCommand" 
                                        onselectedindexchanged="DataGrid1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundColumn DataField="NotificationId" HeaderText="Notification ID">
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="Notification" HeaderText="Notification">
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="Date" HeaderText="Date"></asp:BoundColumn>
                                            <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                                        </Columns>
                                    </asp:DataGrid>
                                </td>
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
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="AddNew" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:View>
        <br />
        

        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        Notification</td>
                    <td>
                        <asp:TextBox ID="txt_ni" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Ok" onclick="Button2_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </asp:View>
        

        <br />
        <br />
    </asp:MultiView>
    </form>
</asp:Content>

