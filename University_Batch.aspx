<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="University_Batch.aspx.cs" Inherits="University_Batch" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:MultiView ID="MultiView2" runat="server">
    <asp:View ID="View2" runat="server">
    <form runat="server">
        <table class="style1">
            <tr>
                <td class="style6">
                    Course Name</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                        onselectedindexchanged="DataGrid1_SelectedIndexChanged" 
                        onitemcommand="DataGrid1_ItemCommand">
                        <Columns>
                            <asp:BoundColumn DataField="Batch_id" HeaderText="Batch Id" ReadOnly="True">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="c_name" HeaderText="Course"></asp:BoundColumn>
                            <asp:BoundColumn DataField="BatchName" HeaderText="Batch Name">
                            </asp:BoundColumn>
                            <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                            <asp:ButtonColumn CommandName="Edit" Text="Edit"></asp:ButtonColumn>
                        </Columns>
                    </asp:DataGrid>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Button ID="Button2" runat="server" Text="AddNew" onclick="Button2_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>

    </asp:View>
    <asp:View ID="View1" runat="server">
    <form runat="server">
        <table class="style1">

            <tr>
                <td class="style5">
                    Course Name</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Batch Name</td>
                <td>
                    <asp:TextBox ID="txt_bn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
        </form>
    </asp:View>
</asp:MultiView>
</asp:Content>

