<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="University_College.aspx.cs" Inherits="University_College" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 24px;
        }
        .style6
        {
            height: 24px;
            width: 370px;
        }
        .style7
        {
            width: 370px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    ss<asp:MultiView ID="MultiView1" runat="server">
        <br />
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                           
                            onitemcommand="DataGrid1_ItemCommand1">
                            <Columns>
                                <asp:TemplateColumn>
                                    <ItemTemplate>
                                        <asp:Image ID="Image2" runat="server" Height="100px" 
                                            ImageUrl='<%# Eval("photo") %>' Width="100px" />
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="Clg_id" HeaderText="College ID" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="College_Name" HeaderText="College Name">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="code" HeaderText="Code"></asp:BoundColumn>
                                <asp:BoundColumn DataField="place" HeaderText="Place" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="p_o" HeaderText="P O" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="dist" HeaderText="District"></asp:BoundColumn>
                                <asp:BoundColumn DataField="state" HeaderText="State" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="pin_code" HeaderText="Pin Code" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="ph_no" HeaderText="Ph No" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="e_id" HeaderText="Email ID"></asp:BoundColumn>
                                <asp:BoundColumn DataField="w_add" HeaderText="Web Address" Visible="False">
                                </asp:BoundColumn>
                                <asp:ButtonColumn CommandName="vm" Text="View More"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="Edit" Text="Edit"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                                <asp:BoundColumn DataField="Photo" HeaderText="Photo" Visible="False">
                                </asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="AddNew" 
                            Width="121px" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <br />
        <br />
        <asp:View ID="View2" runat="server">
            <table class="style1" style="height: 404px">
                <tr>
                    <td class="style6">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td class="style5">
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Upload" 
                            Width="119px" />
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:Image ID="Image1" runat="server" Height="78px" Width="103px" />
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        College_Name</td>
                    <td class="style5">
                        <asp:TextBox ID="txt_CN" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Code</td>
                    <td>
                        <asp:TextBox ID="txt_code1" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Place</td>
                    <td>
                        <asp:TextBox ID="txt_p" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        District</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>kannur</asp:ListItem>
                            <asp:ListItem>kasrkode</asp:ListItem>
                            <asp:ListItem>wayand</asp:ListItem>
                            <asp:ListItem>Trivandram</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        P o</td>
                    <td>
                        <asp:TextBox ID="txt_po" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        State</td>
                    <td>
                        <asp:TextBox ID="txt_st" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Pin_Code</td>
                    <td>
                        <asp:TextBox ID="txt_pin" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Ph_No</td>
                    <td>
                        <asp:TextBox ID="txt_ph" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Email_Id</td>
                    <td>
                        <asp:TextBox ID="txt_ei" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Web_Address</td>
                    <td>
                        <asp:TextBox ID="txt_wa" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Height="26px" onclick="Button2_Click" 
                            Text="OK" Width="120px" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:MultiView>
</asp:Content>

