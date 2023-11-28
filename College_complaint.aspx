<%@ Page Title="" Language="C#" MasterPageFile="~/College.master" AutoEventWireup="true" CodeFile="College_complaint.aspx.cs" Inherits="College_complaint" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server"><asp:MultiView ID="MultiView1" runat="server"
    >
        <br />
        <br />
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid2_ItemCommand">
                            <Columns>
                                <asp:BoundColumn DataField="Cm_id" HeaderText="Complaint ID"></asp:BoundColumn>
                                <asp:BoundColumn DataField="complaints" HeaderText="Complaint">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Date" HeaderText="Date"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Replay" HeaderText="Replay "></asp:BoundColumn>
                                <asp:BoundColumn DataField="status" HeaderText="Status"></asp:BoundColumn>
                                <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="AddNew" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        Complaint</td>
                    <td>
                        <asp:TextBox ID="txt_com" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="OK" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
    </form>
</asp:Content>

