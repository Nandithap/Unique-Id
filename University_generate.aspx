<%@ Page Title="" Language="C#" MasterPageFile="~/University.master" AutoEventWireup="true" CodeFile="University_generate.aspx.cs" Inherits="University_generate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <br />
        <table class="w-100">
            <tr>
                <td>
                    Course</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Batch</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        >
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    College</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                </td>
            </tr>
        </table>
    </p>
    </form>
</asp:Content>

