<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="University_ExternalView.aspx.cs" Inherits="University_ExternalView" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server"><asp:MultiView ID="MultiView1" runat="server">
    >
    <br />
    <br />
    <asp:View ID="View1" runat="server">
        <table class="style1">
            <tr>
                <td>
                        College</td>
                <td class="style9">
                    <asp:DropDownList ID="DropDownList4" runat="server" 
                          
                            style="margin-left: 0px">
                    </asp:DropDownList>
                </td>
                <td class="style2">
                        Course</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="style6">
                        Batch</td>
                <td class="style5">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                        Semester</td>
                <td class="style8">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                    </asp:DropDownList>
                        &nbsp;</td>
                <td class="style8">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Show" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                        onitemcommand="DataGrid1_ItemCommand" onselectedindexchanged="DataGrid1_SelectedIndexChanged" 
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
                                    <asp:ImageButton ID="ImageButton1" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn></asp:TemplateColumn>
                            <asp:ButtonColumn Text="Button"></asp:ButtonColumn>
                        </Columns>
                    </asp:DataGrid>
                </td>
                <td class="style9">
                </td>
            </tr>
            <tr>
                <td class="style2">
                        &nbsp;</td>
                <td class="style9">
                        &nbsp;</td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <table class="style1">
            <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" />
                </td>
                <td>
                        College</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                        Register No</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style7">
                        Name</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                        Gender</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundColumn DataField="Sub_id" HeaderText="Subject ID"></asp:BoundColumn>
                            <asp:BoundColumn DataField="sub_code" HeaderText="Subject Code">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="sub_name" HeaderText="Subject Name">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="mark" HeaderText="Internal Mark"></asp:BoundColumn>
                            <asp:BoundColumn DataField="externalmark" HeaderText="External Mark">
                            </asp:BoundColumn>
                            <asp:TemplateColumn></asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                </td>
                <td class="style7">
                        &nbsp;</td>
            </tr>
            <tr>
                <td>
                        Total Mark</td>
                <td class="style7">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                        &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>
</form>
</asp:Content>

