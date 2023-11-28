<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="University_externalmark.aspx.cs" Inherits="University_externalmark" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 46px;
    }
    .style6
    {
        width: 271px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
    <br />
    <asp:View ID="View3" runat="server">
        <table class="style1">
            <tr>
                <td>
                    College</td>
                <td class="style6">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Course</td>
                <td class="style6">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Subject</td>
                <td class="style6">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style6">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View4" runat="server">
        <table class="style1">
            <tr>
                <td>
                    <asp:DataGrid ID="DataGrid1" runat="server">
                        <Columns>
                            <asp:BoundColumn DataField="Std_name" HeaderText="Student Name">
                            </asp:BoundColumn>
                            <asp:BoundColumn></asp:BoundColumn>
                            <asp:BoundColumn></asp:BoundColumn>
                            <asp:BoundColumn DataField="Std_name" HeaderText="Student Name">
                            </asp:BoundColumn>
                        </Columns>
                    </asp:DataGrid>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:View>
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
</asp:MultiView>
</asp:Content>

