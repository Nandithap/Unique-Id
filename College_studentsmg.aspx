<%@ Page Title="" Language="C#" MasterPageFile="~/College.master" AutoEventWireup="true" CodeFile="College_studentsmg.aspx.cs" Inherits="College_studentsmg" %>


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
                                <td class="style16">
                                    Course</td>
                                <td class="style18">
                                    <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" 
                                        onselectedindexchanged="DropDownList5_SelectedIndexChanged">
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
                                    <asp:DropDownList ID="DropDownList7" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style15">
                                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Show" />
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
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                             onitemcommand="DataGrid1_ItemCommand" 
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
                                <asp:BoundColumn DataField="dob" HeaderText="D O B">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="f_n" HeaderText="Father Name" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="m_n" HeaderText="Mother Name" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="g_n" HeaderText="Guardian"></asp:BoundColumn>
                                <asp:BoundColumn DataField="c_s" HeaderText="Cast" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="r_l" HeaderText="Religion" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="p_h" HeaderText="Phone No">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="e_add" HeaderText="Email Address">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="pic" HeaderText="Photo" Visible="False"></asp:BoundColumn>
                                <asp:TemplateColumn>
                                    <ItemTemplate>
                                        <asp:Image ID="Image2" runat="server" Height="100px" 
                                            ImageUrl='<%# Eval("pic") %>' Width="100px" />
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:ButtonColumn CommandName="Edit" Text="Edit"></asp:ButtonColumn>
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
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                    <td class="style12">
                        <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" />
                    </td>
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
                        <asp:TextBox ID="txt_rg" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Student Name</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_sn" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Course Name</td>
                    <td class="style12">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Batch Name</td>
                    <td class="style12">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Place</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_pl" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        City</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_ct" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        District</td>
                    <td class="style12">
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>Kasargod</asp:ListItem>
                            <asp:ListItem>Kannur</asp:ListItem>
                            <asp:ListItem>Wayanad</asp:ListItem>
                            <asp:ListItem>Kozhikode</asp:ListItem>
                            <asp:ListItem>Palakkad</asp:ListItem>
                            <asp:ListItem>Thrissur</asp:ListItem>
                            <asp:ListItem Value="Ernakulam"></asp:ListItem>
                            <asp:ListItem>Idukki</asp:ListItem>
                            <asp:ListItem>Malappuram</asp:ListItem>
                            <asp:ListItem>Kottayam</asp:ListItem>
                            <asp:ListItem>Thiruvanathapuram</asp:ListItem>
                            <asp:ListItem>Kollam</asp:ListItem>
                            <asp:ListItem>Alappuzha</asp:ListItem>
                            <asp:ListItem>Pathanamthitta</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        P O</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_po" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td class="style10">
                        Pin Code</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_pc" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        State</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_st" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Gender</td>
                    <td class="style12">
                        <asp:RadioButton ID="Male" runat="server" GroupName="gender" Text="Male" />
                        <asp:RadioButton ID="Female" runat="server" GroupName="gender" Text="Female" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        D O B
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txt_dob" runat="server"></asp:TextBox>
                        &nbsp;</td>
                    <td class="style9">
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        Father Name</td>
                    <td class="style13">
                        <asp:TextBox ID="txt_fn" runat="server"></asp:TextBox>
                    </td>
                    <td class="style9">
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        Mother Name</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_mn" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Guardian</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_gn" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Cast</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_cs" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Religion</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_r" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Phone No</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_ph" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Email&nbsp; address</td>
                    <td class="style12">
                        <asp:TextBox ID="txt_ea" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style12">
                        <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
    </form>
</asp:Content>

