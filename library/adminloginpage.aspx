<%@ Page Language="VB" AutoEventWireup="false" CodeFile="adminloginpage.aspx.vb" Inherits="adminloginpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 745px;
            border-style: solid;
            border-width: 1px;
        }
        .style4
        {
            width: 101px;
        }
        .style7
        {
        }
        .style9
        {
            height: 69px;
        }
        .style13
        {
            width: 101px;
            height: 69px;
        }
        .style20
        {
            width: 575px;
            height: 69px;
        }
        .style21
        {
            width: 575px;
        }
        .style28
        {
            height: 22px;
            width: 329px;
            font-size: xx-large;
        }
        .style29
        {
            width: 575px;
            height: 22px;
        }
        .style30
        {
            width: 101px;
            height: 22px;
        }
        .style38
        {
            height: 152px;
        }
        .style39
        {
            width: 101px;
            height: 152px;
        }
        .style44
        {
            height: 22px;
        }
        .style49
        {
            height: 54px;
        }
        .style50
        {
            height: 54px;
            width: 329px;
            font-size: xx-large;
        }
        .style51
        {
            width: 575px;
            height: 54px;
        }
        .style52
        {
            width: 101px;
            height: 54px;
        }
        .style53
        {
            height: 79px;
        }
        .style55
        {
            width: 575px;
            height: 79px;
        }
        .style56
        {
            width: 101px;
            height: 79px;
        }
        .style57
        {
            height: 19px;
        }
        .style58
        {
            height: 19px;
            width: 329px;
            font-size: xx-large;
        }
        .style59
        {
            width: 575px;
            height: 19px;
        }
        .style60
        {
            width: 101px;
            height: 19px;
        }
        .style61
        {
            height: 152px;
            font-size: xx-large;
            font-family: Algerian;
        }
        .style62
        {
            width: 329px;
            height: 69px;
        }
        .style63
        {
            width: 329px;
            height: 79px;
        }
        .style64
        {
            width: 329px;
        }
        .style65
        {
            height: 57px;
        }
        .style66
        {
            width: 101px;
            height: 57px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style9">
                </td>
                <td class="style9">
                </td>
                <td class="style9">
                </td>
                <td class="style9">
                </td>
                <td class="style9">
                </td>
                <td class="style62">
                </td>
                <td class="style20">
                </td>
                <td class="style13">
                </td>
            </tr>
            <tr>
                <td class="style38">
                </td>
                <td align="center" colspan="3" rowspan="8">
                    <asp:Image ID="Image1" runat="server" Height="500px" 
                        ImageUrl="~/demoimages/admin.png" style="margin-left: 0px" Width="775px" />
                </td>
                <td class="style38">
                </td>
                <td align="center" class="style61" colspan="2">
                        Library Management</td>
                <td class="style39">
                </td>
            </tr>
            <tr>
                <td class="style49">
                </td>
                <td class="style49">
                </td>
                <td align="center" class="style50">
                    Admin id :</td>
                <td class="style51">
                    <asp:TextBox ID="txtadminid" runat="server" Height="50px" Width="250px"></asp:TextBox>
                </td>
                <td class="style52">
                </td>
            </tr>
            <tr>
                <td class="style57">
                </td>
                <td class="style57">
                </td>
                <td align="center" class="style58">
                </td>
                <td class="style59">
                </td>
                <td class="style60">
                </td>
            </tr>
            <tr>
                <td class="style44">
                </td>
                <td class="style44">
                </td>
                <td align="center" class="style28">
                    Password :</td>
                <td class="style29">
                    <asp:TextBox ID="txtpassword" runat="server" Height="50px" Width="250px"></asp:TextBox>
                </td>
                <td class="style30">
                </td>
            </tr>
            <tr>
                <td class="style53">
                </td>
                <td class="style53">
                </td>
                <td class="style63">
                </td>
                <td class="style55">
                    &nbsp;</td>
                <td class="style56">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="center" class="style7" colspan="2">
                    <asp:Button ID="btnsubmit" runat="server" BackColor="#000099" Font-Bold="True" 
                        Font-Size="Large" ForeColor="White" Height="50px" Text="Log in " 
                        Width="150px" />
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style65">
                </td>
                <td class="style65">
                </td>
                <td align="center" class="style65" colspan="2">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
                </td>
                <td class="style66">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="style64">
                    &nbsp;</td>
                <td class="style21">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="center" colspan="4">
                    Copyright © 2000-2023. All rights reserved.</td>
                <td class="style21">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
