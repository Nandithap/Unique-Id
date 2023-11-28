<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form  runat="server"><asp:MultiView ID="MultiView1" runat="server"
    >
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        <table class="style14">
                            <tr>
                                <td>
                                    College</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList8" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style16">
                                    Course</td>
                                <td class="style18">
                                    <asp:DropDownList ID="DropDownList5" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style20">
                                    Batch</td>
                                <td class="style23">
                                    <asp:DropDownList ID="DropDownList6" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style15">
                                    Semester</td>
                                <td class="style15">
                                    <asp:DropDownList ID="DropDownList9" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style15">
                                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click1" Text="Show" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td class="style21">
                                    &nbsp;</td>
                                <td class="style22" colspan="4">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style17">
                                    &nbsp;</td>
                                <td class="style19">
                                    &nbsp;</td>
                                <td class="style21">
                                    &nbsp;</td>
                                <td class="style22" colspan="4">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" onitemcommand="DataGrid1_ItemCommand" 
                             
                            >
                            <Columns>
                                <asp:BoundColumn DataField="s_id" HeaderText="Student Id" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Reg_no" HeaderText="Register No"></asp:BoundColumn>
                                <asp:BoundColumn DataField="s_n" HeaderText="Student Name"></asp:BoundColumn>
                                <asp:BoundColumn DataField="c_name" HeaderText="Course Name"></asp:BoundColumn>
                                <asp:BoundColumn DataField="BatchName" HeaderText="Batch Name">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="semester" HeaderText="Semester"></asp:BoundColumn>
                                <asp:BoundColumn DataField="p_l" HeaderText="Place"></asp:BoundColumn>
                                <asp:BoundColumn DataField="c_t" HeaderText="City" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="d_t" HeaderText="District" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="po" HeaderText="P O" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="p_c" HeaderText="Pin Code" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="s_t" HeaderText="State" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="g_d" HeaderText="Gender"></asp:BoundColumn>
                                <asp:BoundColumn DataField="dob" HeaderText="D O B"></asp:BoundColumn>
                                <asp:BoundColumn DataField="f_n" HeaderText="Father Name" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="m_n" HeaderText="Mother Name" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="g_n" HeaderText="Guardian"></asp:BoundColumn>
                                <asp:BoundColumn DataField="c_s" HeaderText="Cast" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="r_l" HeaderText="Religion" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="p_h" HeaderText="Phone No"></asp:BoundColumn>
                                <asp:BoundColumn DataField="e_add" HeaderText="Email Address"></asp:BoundColumn>
                                <asp:BoundColumn DataField="pic" HeaderText="Photo" Visible="False">
                                </asp:BoundColumn>
                                <asp:TemplateColumn>
                                    <ItemTemplate>
                                        <asp:Image ID="Image2" runat="server" Height="100px" 
                                            ImageUrl='<%# Eval("pic") %>' Width="100px" />
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:ButtonColumn CommandName="Edit" Text="Edit"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="ViewMore" Text="ViewMore"></asp:ButtonColumn>
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
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style12">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style12">
                        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Register No</td>
                    <td class="style12">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Student Name</td>
                    <td class="style12">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Course Name</td>
                    <td class="style12">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Batch Name</td>
                    <td class="style12">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Place</td>
                    <td class="style12">
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        City</td>
                    <td class="style12">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        District</td>
                    <td class="style12">
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        P O</td>
                    <td class="style12">
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        Pin Code</td>
                    <td class="style12">
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        State</td>
                    <td class="style12">
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Gender</td>
                    <td class="style12">
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        D O B
                    </td>
                    <td class="style13">
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style9">
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        Father Name</td>
                    <td class="style13">
                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style9">
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        Mother Name</td>
                    <td class="style12">
                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Guardian</td>
                    <td class="style12">
                        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Cast</td>
                    <td class="style12">
                        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Religion</td>
                    <td class="style12">
                        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Phone No</td>
                    <td class="style12">
                        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Email&nbsp; address</td>
                    <td class="style12">
                        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style12">
                        <asp:Button ID="Button2" runat="server" Text="Submit"  />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
    </form>
    </asp:Content>

