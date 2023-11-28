<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="University_Subject.aspx.cs" Inherits="University_Subject" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server"><asp:MultiView ID="MultiView1" runat="server"
    >
        <br />
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid1_ItemCommand">
                            <Columns>
                                <asp:BoundColumn DataField="Sub_id" HeaderText="Subject ID"></asp:BoundColumn>
                                <asp:BoundColumn DataField="c_id" HeaderText="Course ID"></asp:BoundColumn>
                                <asp:BoundColumn DataField="c_name" HeaderText="Course Name"></asp:BoundColumn>
                                <asp:BoundColumn DataField="sub_code" HeaderText="Subject Code">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="sub_name" HeaderText="Subject Name">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Sem" HeaderText="Semester"></asp:BoundColumn>
                                <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="Edit" Text="Edit"></asp:ButtonColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="AddNew" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </asp:View>
        <br />
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td class="style6">
                        Course Name</td>
                    <td>
                        <asp:DropDownList runat="server" ID="drcourse" 
                         >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        Sub_code</td>
                    <td>
                        <asp:TextBox ID="txt_sc" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        Sub_Name</td>
                    <td>
                        <asp:TextBox ID="txt_sn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        Sem</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                          >
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="OK" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <br />
    </asp:MultiView>
    </form>
</asp:Content>

