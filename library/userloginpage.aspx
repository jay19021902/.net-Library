<%@ Page Language="VB" AutoEventWireup="false" CodeFile="userloginpage.aspx.vb" Inherits="userloginpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 718px;
            border-style: solid;
            border-width: 1px;
        }
        .style13
        {
            width: 54px;
        }
        .style15
        {
        }
        .style17
        {
            width: 180px;
        }
        .style37
        {
            width: 54px;
            height: 55px;
        }
        .style38
        {
            width: 180px;
            height: 55px;
        }
        .style39
        {
            height: 55px;
        }
        .style42
        {
            height: 55px;
            width: 229px;
        }
        .style44
        {
            width: 54px;
            height: 25px;
        }
        .style45
        {
            width: 180px;
            height: 25px;
        }
        .style46
        {
            height: 25px;
        }
        .style47
        {
            height: 25px;
            width: 229px;
        }
        .style57
        {
            width: 54px;
            height: 29px;
        }
        .style58
        {
            width: 180px;
            height: 29px;
        }
        .style59
        {
            height: 29px;
        }
        .style60
        {
            width: 54px;
            height: 32px;
        }
        .style61
        {
            width: 180px;
            height: 32px;
        }
        .style62
        {
            height: 32px;
        }
        .style63
        {
            height: 32px;
            width: 229px;
        }
        .style64
        {
            width: 54px;
            height: 13px;
        }
        .style65
        {
            width: 180px;
            height: 13px;
        }
        .style66
        {
            height: 13px;
        }
        .style67
        {
            height: 13px;
            width: 229px;
        }
        .style68
        {
            width: 54px;
            height: 8px;
        }
        .style69
        {
            width: 180px;
            height: 8px;
        }
        .style70
        {
            height: 8px;
        }
        .style71
        {
            width: 54px;
            height: 36px;
        }
        .style72
        {
            width: 180px;
            height: 36px;
        }
        .style73
        {
            height: 36px;
        }
        .style74
        {
            font-size: x-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td align="center" class="style15" colspan="4" rowspan="5">
                    <asp:Image ID="Image1" runat="server" Height="400px" 
                        ImageUrl="~/demoimages/userlogin.png" />
                </td>
                <td class="style17" align="center">
                    <asp:Button ID="btnadmin" runat="server" BackColor="White" Font-Bold="True" 
                        Font-Size="Large" ForeColor="#000099" Height="50px" Text="Admin" 
                        Width="150px" Font-Underline="True" PostBackUrl="~/adminloginpage.aspx" />
                </td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                </td>
                <td class="style17">
                </td>
                <td class="style17">
                </td>
                <td class="style13">
                </td>
            </tr>
            <tr>
                <td class="style64">
                </td>
                <td class="style65">
                </td>
                <td class="style66">
                </td>
                <td class="style67">
                </td>
                <td class="style66">
                </td>
                <td class="style66">
                </td>
                <td class="style65">
                </td>
                <td class="style64">
                </td>
            </tr>
            <tr>
                <td class="style37">
                </td>
                <td class="style38">
                </td>
                <td class="style39">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td align="center" class="style42">
&nbsp;<span class="style74">User Name :</span></td>
                <td class="style39" style="vertical-align: middle; text-align: left">
                    <asp:TextBox ID="txtusername" runat="server" Height="50px" Width="250px"></asp:TextBox>
                </td>
                <td class="style39" align="left" 
                    style="text-align: left; vertical-align: middle">
                    &nbsp;</td>
                <td class="style38">
                </td>
                <td class="style37">
                </td>
            </tr>
            <tr>
                <td class="style44">
                </td>
                <td class="style45">
                </td>
                <td class="style46">
                </td>
                <td align="center" class="style47">
                </td>
                <td class="style46">
                </td>
                <td class="style46">
                </td>
                <td class="style45">
                </td>
                <td class="style44">
                </td>
            </tr>
            <tr>
                <td class="style37">
                </td>
                <td class="style38">
                </td>
                <td class="style39">
                </td>
                <td align="center" class="style42">
&nbsp;<span class="style74">Password :</span></td>
                <td class="style39" style="text-align: left; vertical-align: middle">
                    <asp:TextBox ID="txtpassword" runat="server" Height="50px" Width="250px"></asp:TextBox>
                </td>
                <td class="style39">
                    &nbsp;</td>
                <td class="style38">
                </td>
                <td class="style37">
                </td>
            </tr>
            <tr>
                <td class="style60">
                </td>
                <td class="style61">
                </td>
                <td class="style62">
                </td>
                <td class="style63">
                    &nbsp;</td>
                <td class="style62">
                    &nbsp;</td>
                <td class="style62">
                </td>
                <td class="style61">
                </td>
                <td class="style60">
                </td>
            </tr>
            <tr>
                <td class="style37">
                </td>
                <td class="style38">
                </td>
                <td align="center" class="style39" colspan="4">
                    <asp:Button ID="btnsubmit" runat="server" BackColor="#000099" Font-Bold="True" 
                        Font-Size="Large" ForeColor="White" Height="50px" Text="Log in " 
                        Width="150px" />
                </td>
                <td class="style38">
                </td>
                <td class="style37">
                </td>
            </tr>
            <tr>
                <td class="style68">
                </td>
                <td class="style69">
                </td>
                <td align="center" class="style70" colspan="4" 
                    style="text-align: center; vertical-align: middle">
                    &nbsp;</td>
                <td class="style69">
                </td>
                <td class="style68">
                </td>
            </tr>
            <tr>
                <td class="style57">
                </td>
                <td class="style58">
                </td>
                <td align="center" class="style59" colspan="4" 
                    style="text-align: center; vertical-align: middle">
                    <span class="style74">Don&#39;t have account?</span>&nbsp;
                    <asp:Button ID="btnsignin" runat="server" BackColor="White" BorderStyle="None" 
                        Font-Names="Arial" Font-Size="Medium" Font-Underline="True" ForeColor="#0000CC" 
                        Height="29px" PostBackUrl="~/usersigninpage.aspx" Text="Sign In" Width="78px" />
                </td>
                <td class="style58">
                </td>
                <td class="style57">
                </td>
            </tr>
            <tr>
                <td class="style57">
                    &nbsp;</td>
                <td class="style58">
                    &nbsp;</td>
                <td align="center" class="style59" colspan="4" 
                    style="text-align: center; vertical-align: middle">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
                </td>
                <td class="style58">
                    &nbsp;</td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style71">
                </td>
                <td class="style72">
                </td>
                <td class="style73" align="center" colspan="4">
                    Copyright © 2000-2023. All rights reserved.</td>
                <td class="style72">
                </td>
                <td class="style71">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
