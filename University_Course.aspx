<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="University_Course.aspx.cs" Inherits="University_Course" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server"><asp:MultiView ID="MultiView1" runat="server"
    >
    <asp:View ID="View1" runat="server">
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="DeleteAll" />
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                        Text="DeleteSelected" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                        onitemcommand="DataGrid1_ItemCommand">
                        <Columns>
                            <asp:TemplateColumn>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn DataField="c_id" HeaderText="Course ID"></asp:BoundColumn>
                            <asp:BoundColumn DataField="c_name" HeaderText="Course Name"></asp:BoundColumn>
                            <asp:BoundColumn DataField="c_code" HeaderText="Course Code"></asp:BoundColumn>
                            <asp:ButtonColumn CommandName="Edit" Text="Edit"></asp:ButtonColumn>
                        </Columns>
                    </asp:DataGrid>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="AddNew" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <table class="style1">
            <tr>
                <td class="style4">
                    Course Code</td>
                <td>
                    <asp:TextBox ID="txt_code" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Course Name</td>
                <td>
                    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Submit" Width="125px" 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>
</form>
</asp:Content>

