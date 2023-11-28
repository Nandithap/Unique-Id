<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="University_Complaints.aspx.cs" Inherits="University_Complaints" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <asp:MultiView ID="MultiView1" runat="server" 
    onactiveviewchanged="MultiView1_ActiveViewChanged">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:View ID="View1" runat="server">
        <table class="style1">
            <tr>
                <td>
                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                        onitemcommand="DataGrid1_ItemCommand" 
                        onselectedindexchanged="DataGrid1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundColumn DataField="Cm_id" HeaderText="ComplaintId"></asp:BoundColumn>
                            <asp:BoundColumn DataField="College_Name" HeaderText="College Name">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="complaints" HeaderText="Complaint"></asp:BoundColumn>
                            <asp:BoundColumn DataField="Date" HeaderText="Date"></asp:BoundColumn>
                            <asp:BoundColumn DataField="Replay" HeaderText="Replay" Visible="False"></asp:BoundColumn>
                            <asp:BoundColumn DataField="status" HeaderText="Status"></asp:BoundColumn>
                            <asp:ButtonColumn CommandName="Send Replay" Text="Send Replay">
                            </asp:ButtonColumn>
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
        </table>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <table class="style1">
            <tr>
                <td class="style8">
                    Complaint</td>
                <td>
                    <asp:TextBox ID="txt_com" runat="server" Enabled="False" Height="59px" 
                        Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Replay</td>
                <td>
                    <asp:TextBox ID="txt_rp" runat="server" Height="19px" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Send" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>
</form>
</asp:Content>

