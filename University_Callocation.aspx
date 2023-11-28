<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="University_Callocation.aspx.cs" Inherits="University_Callocation" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <form  runat="server"><asp:MultiView ID="MultiView2" runat="server" 
        >
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td class="style5">
                        College</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Course</td>
                    <td>
                        <asp:DropDownList runat="server" ID="DropDownList2">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="Allocate" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td class="style9">
                        College Name</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style8" colspan="2">
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid1_ItemCommand" Width="319px">
                            <Columns>
                                <asp:BoundColumn DataField="Al_id" HeaderText="Allocation Id"></asp:BoundColumn>
                                <asp:BoundColumn DataField="College_Name" HeaderText="College Name">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="c_name" HeaderText="Course Name"></asp:BoundColumn>
                                <asp:ButtonColumn CommandName="DELETE" Text="DELETE"></asp:ButtonColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Button ID="Button2" runat="server" Text="AddNew" onclick="Button2_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
    </form>
</asp:Content>

