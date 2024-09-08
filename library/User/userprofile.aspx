<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPageUser.master" AutoEventWireup="false" CodeFile="userprofile.aspx.vb" Inherits="User_userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
    {
        width: 991px;
        height: 352px;
            margin-right: 210px;
        }
    .style13
    {
        width: 217%;
        height: 387px;
    }
        .style29
        {
            width: 101%;
            height: 569px;
        }
        .style30
        {
            width: 152px;
        }
        .style31
        {
            width: 396px;
        }
        .style32
        {
        }
        .style33
        {
            width: 186px;
            font-size: x-large;
        }
        .style34
        {
            width: 180px;
        }
        .style35
        {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style29">
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style31">
                &nbsp;</td>
            <td class="style34">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style35" colspan="2">
                <strong>Personal Information : </strong>
            </td>
            <td class="style34">
                <asp:Button ID="btneditprofile" runat="server" Height="60px" 
                    PostBackUrl="~/User/usereditprofile.aspx" Text="Edit" Width="167px" 
                    BackColor="White" Font-Size="Large" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style31">
                &nbsp;</td>
            <td class="style34">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style33">
                Name :</td>
            <td class="style31">
                <asp:Label ID="lblusername" runat="server" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="style34">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style33">
                E-mail :</td>
            <td class="style31">
                <asp:Label ID="lblemail" runat="server" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="style34">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style33">
                Contact No :</td>
            <td class="style31">
                <asp:Label ID="lblcontactno" runat="server" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="style34">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style33">
                Age :</td>
            <td class="style31">
                <asp:Label ID="lblage" runat="server" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="style34">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style33">
                Address :</td>
            <td class="style31">
                <asp:Label ID="lbladdress" runat="server" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="style34">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style31">
                &nbsp;</td>
            <td class="style34">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style30">
                &nbsp;</td>
            <td class="style32">
                <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
            <td class="style31">
                &nbsp;</td>
            <td class="style34">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


