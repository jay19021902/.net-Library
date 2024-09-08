<%@ Page Language="VB" AutoEventWireup="false" CodeFile="usersigninpage.aspx.vb" Inherits="usersigninpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 734px;
            border-style: solid;
            border-width: 1px;
        }
        .style5
        {
            width: 55px;
        }
        .style10
        {
            width: 67px;
        }
        .style42
        {
            width: 55px;
            height: 48px;
        }
        .style45
        {
            width: 492px;
            height: 48px;
        }
        .style46
        {
            width: 67px;
            height: 48px;
        }
        .style47
        {
            width: 55px;
            height: 50px;
        }
        .style50
        {
            width: 492px;
            height: 50px;
        }
        .style51
        {
            width: 67px;
            height: 50px;
        }
        .style54
        {
            width: 19px;
            height: 48px;
        }
        .style56
        {
        }
        .style58
        {
            width: 186px;
            height: 48px;
            font-size: x-large;
        }
        .style62
        {
            width: 19px;
            height: 50px;
        }
        .style63
        {
            width: 186px;
            height: 50px;
        }
        .style64
        {
            width: 186px;
            height: 50px;
            font-size: x-large;
        }
        .style65
        {
            font-size: x-large;
        }
        .style66
        {
            width: 55px;
            height: 59px;
        }
        .style67
        {
            width: 19px;
            height: 59px;
        }
        .style68
        {
            height: 59px;
        }
        .style69
        {
            width: 67px;
            height: 59px;
        }
        .style70
        {
            width: 55px;
            height: 69px;
        }
        .style71
        {
            width: 19px;
            height: 69px;
        }
        .style72
        {
            height: 69px;
        }
        .style73
        {
            width: 67px;
            height: 69px;
        }
        .style76
        {
            width: 186px;
            height: 31px;
        }
        .style77
        {
            width: 55px;
            height: 31px;
        }
        .style78
        {
            width: 19px;
            height: 31px;
        }
        .style79
        {
            width: 492px;
            height: 31px;
        }
        .style80
        {
            width: 67px;
            height: 31px;
        }
        .style81
        {
            font-size: xx-large;
            height: 68px;
            font-family: Algerian;
        }
        .style84
        {
            height: 15px;
            width: 186px;
        }
        .style85
        {
            width: 55px;
            height: 15px;
        }
        .style86
        {
            width: 19px;
            height: 15px;
        }
        .style87
        {
            width: 492px;
            height: 15px;
        }
        .style88
        {
            width: 67px;
            height: 15px;
        }
        .style89
        {
            width: 55px;
            height: 68px;
        }
        .style90
        {
            width: 19px;
            height: 68px;
        }
        .style91
        {
            width: 67px;
            height: 68px;
        }
        .style92
        {
            font-weight: normal;
        }
        .style94
        {
            width: 55px;
            height: 66px;
        }
        .style95
        {
            width: 201px;
            height: 66px;
        }
        .style96
        {
            width: 19px;
            height: 66px;
        }
        .style97
        {
            width: 186px;
            height: 66px;
        }
        .style98
        {
            width: 492px;
            height: 66px;
        }
        .style99
        {
            width: 67px;
            height: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style94">
                    </td>
                <td class="style95">
                    &nbsp;</td>
                <td class="style96">
                    </td>
                <td class="style97">
                    </td>
                <td class="style98">
                    </td>
                <td class="style99">
                    </td>
            </tr>
            <tr>
                <td class="style89">
                </td>
                <td align="center" class="style56" rowspan="11">
                    <asp:Image ID="Image1" runat="server" Height="600px" 
                        ImageUrl="~/demoimages/signin.png" Width="600px" />
                </td>
                <td class="style90">
                </td>
                <td align="center" class="style81" colspan="2">
                    <h2 class="style92">
                        Library Management</h2>
                </td>
                <td class="style91">
                </td>
            </tr>
            <tr>
                <td class="style85">
                </td>
                <td class="style86">
                </td>
                <td class="style84">
                </td>
                <td class="style87">
                </td>
                <td class="style88">
                </td>
            </tr>
            <tr>
                <td class="style42">
                </td>
                <td class="style54">
                </td>
                <td align="center" class="style58">
                    User Name :</td>
                <td class="style45">
                    <asp:TextBox ID="txtusername" runat="server" Height="38px" Width="320px"></asp:TextBox>
                </td>
                <td class="style46">
                </td>
            </tr>
            <tr>
                <td class="style47">
                </td>
                <td class="style62">
                </td>
                <td align="center" class="style64">
                    Password :</td>
                <td class="style50">
                    <asp:TextBox ID="txtpassword" runat="server" Height="38px" Width="320px"></asp:TextBox>
                </td>
                <td class="style51">
                </td>
            </tr>
            <tr>
                <td class="style47">
                </td>
                <td class="style62">
                </td>
                <td align="center" class="style64">
                    E-mail :</td>
                <td class="style50">
                    <asp:TextBox ID="txtemail" runat="server" Height="38px" Width="320px"></asp:TextBox>
                </td>
                <td class="style51">
                </td>
            </tr>
            <tr>
                <td class="style47">
                </td>
                <td class="style62">
                </td>
                <td align="center" class="style64">
                    Contact No :</td>
                <td class="style50">
                    <asp:TextBox ID="txtcontactno" runat="server" Height="38px" TextMode="Number" 
                        Width="320px"></asp:TextBox>
                </td>
                <td class="style51">
                </td>
            </tr>
            <tr>
                <td class="style47">
                </td>
                <td class="style62">
                </td>
                <td align="center" class="style63">
                    <span class="style65">Address :</span>
                </td>
                <td class="style50">
                    <asp:TextBox ID="txtaddress" runat="server" Height="38px" Width="320px"></asp:TextBox>
                </td>
                <td class="style51">
                </td>
            </tr>
            <tr>
                <td class="style47">
                </td>
                <td class="style62">
                </td>
                <td align="center" class="style64">
                    Age :
                </td>
                <td class="style50">
                    <asp:TextBox ID="txtage" runat="server" Height="38px" TextMode="Number" 
                        Width="320px"></asp:TextBox>
                </td>
                <td class="style51">
                </td>
            </tr>
            <tr>
                <td class="style77">
                </td>
                <td class="style78">
                </td>
                <td class="style76">
                </td>
                <td class="style79">
                </td>
                <td class="style80">
                </td>
            </tr>
            <tr>
                <td class="style66">
                </td>
                <td class="style67">
                </td>
                <td align="center" class="style68" colspan="2">
                    <asp:Button ID="btnregister" runat="server" BackColor="#000099" 
                        Font-Size="Large" ForeColor="White" Height="50px" Text="Register" 
                        Width="150px" />
                </td>
                <td class="style69">
                </td>
            </tr>
            <tr>
                <td class="style70">
                </td>
                <td class="style71">
                </td>
                <td align="center" class="style72" colspan="2">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="style73">
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style56" align="center" colspan="4">
                    Copyright © 2000-2023. All rights reserved.</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
