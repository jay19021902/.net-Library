<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="adminaddbooks.aspx.vb" Inherits="Admin_adminaddbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style12
    {
        width: 100%;
        height: 663px;
    }
    .style13
    {            height: 29px;
        }
    .style14
    {
        width: 428px;
    }
    .style15
    {
        width: 56px;
    }
    .style16
    {
        width: 91px;
    }
    .style17
    {
        width: 85px;
    }
    .style18
    {
        width: 85px;
        height: 109px;
    }
    .style20
    {
        width: 428px;
        height: 109px;
    }
    .style21
    {
        width: 91px;
        height: 109px;
    }
    .style22
    {
        width: 56px;
        height: 109px;
    }
    .style23
    {
        width: 85px;
        height: 58px;
    }
    .style25
    {
        width: 428px;
        height: 58px;
    }
    .style26
    {
        width: 91px;
        height: 58px;
    }
    .style27
    {
        width: 56px;
        height: 58px;
    }
    .style28
    {
        width: 85px;
        height: 53px;
    }
    .style30
    {
        width: 428px;
        height: 53px;
    }
    .style31
    {
        width: 91px;
        height: 53px;
    }
    .style32
    {
        width: 56px;
        height: 53px;
    }
    .style33
    {
        font-size: xx-large;
    }
    .style35
    {
        height: 56px;
    }
    .style36
    {
        width: 85px;
        height: 56px;
    }
    .style37
    {
        width: 91px;
        height: 56px;
    }
    .style38
    {
        width: 56px;
        height: 56px;
    }
        .style39
        {
            width: 68px;
        }
        .style40
        {
            width: 68px;
            height: 58px;
        }
        .style41
        {
            width: 68px;
            height: 109px;
        }
        .style42
        {
            width: 68px;
            height: 53px;
        }
        .style43
        {
            width: 85px;
            height: 11px;
        }
        .style44
        {
            width: 68px;
            height: 11px;
        }
        .style45
        {
            width: 428px;
            height: 11px;
        }
        .style46
        {
            width: 91px;
            height: 11px;
        }
        .style47
        {
            width: 56px;
            height: 11px;
        }
        .style48
        {
            width: 85px;
            height: 29px;
        }
        .style49
        {
            width: 91px;
            height: 29px;
        }
        .style50
        {
            width: 56px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style12">
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style33" colspan="2" 
            style="text-align: left; vertical-align: middle">
            Enter Book Details :</td>
        <td class="style16">
            &nbsp;</td>
        <td class="style15">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style43">
            </td>
        <td class="style44">
            </td>
        <td class="style45">
            </td>
        <td class="style46">
            </td>
        <td class="style47">
            </td>
    </tr>
    <tr>
        <td class="style23">
        </td>
        <td class="style40" style="text-align: center; vertical-align: middle">
            Book Name :</td>
        <td class="style25" style="text-align: left; vertical-align: middle">
            <asp:TextBox ID="txtbookname" runat="server" Height="45px" 
                style="margin-left: 0px" Width="310px"></asp:TextBox>
        </td>
        <td class="style26">
        </td>
        <td class="style27">
        </td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style39" style="text-align: center; vertical-align: middle">
            Authore Name :</td>
        <td class="style25" style="text-align: left; vertical-align: middle">
            <asp:TextBox ID="txtauthorename" runat="server" Height="45px" 
                style="margin-left: 0px" Width="310px"></asp:TextBox>
        </td>
        <td class="style16">
            &nbsp;</td>
        <td class="style15">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style39" style="text-align: center; vertical-align: middle">
            Book Price :</td>
        <td class="style25" style="text-align: left; vertical-align: middle">
            <asp:TextBox ID="txtbookprice" runat="server" Height="45px" 
                style="margin-left: 0px" Width="310px"></asp:TextBox>
        </td>
        <td class="style16">
            &nbsp;</td>
        <td class="style15">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style39" style="text-align: center; vertical-align: middle">
            Book Type&nbsp; :</td>
        <td class="style25" style="text-align: left; vertical-align: middle">
            <asp:DropDownList ID="ddlbooktype" runat="server" Height="45px" Width="210px">
                <asp:ListItem>art</asp:ListItem>
                <asp:ListItem Value="biography">biography</asp:ListItem>
                <asp:ListItem>business</asp:ListItem>
                <asp:ListItem>dictionary</asp:ListItem>
                <asp:ListItem>encyclopedia</asp:ListItem>
                <asp:ListItem>guide</asp:ListItem>
                <asp:ListItem>health</asp:ListItem>
                <asp:ListItem>historical fiction</asp:ListItem>
                <asp:ListItem>journal</asp:ListItem>
                <asp:ListItem>mystery</asp:ListItem>
                <asp:ListItem>novel</asp:ListItem>
                <asp:ListItem>poetry</asp:ListItem>
                <asp:ListItem>science</asp:ListItem>
                <asp:ListItem>sport</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style16">
            &nbsp;</td>
        <td class="style15">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style18">
        </td>
        <td class="style41" style="text-align: center; vertical-align: middle">
            Book description :</td>
        <td class="style20" style="text-align: left; vertical-align: middle">
            <asp:TextBox ID="txtbookdesc" runat="server" Height="106px" 
                style="margin-left: 0px" TextMode="MultiLine" Width="318px"></asp:TextBox>
        </td>
        <td class="style21">
        </td>
        <td class="style22">
        </td>
    </tr>
    <tr>
        <td class="style28">
        </td>
        <td class="style42" style="text-align: center; vertical-align: middle">
            Book Image :
        </td>
        <td class="style30" style="text-align: left; vertical-align: middle">
            <asp:FileUpload ID="fubookimage" runat="server" Height="33px" />
        </td>
        <td class="style31">
        </td>
        <td class="style32">
        </td>
    </tr>
    <tr>
        <td class="style48">
            </td>
        <td class="style13" colspan="2">
            <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"></asp:Label>
        </td>
        <td class="style49">
            </td>
        <td class="style50">
            </td>
    </tr>
    <tr>
        <td class="style36">
        </td>
        <td align="center" class="style35" colspan="2">
            <asp:Button ID="btnsubmit" runat="server" BackColor="#000099" ForeColor="White" 
                Height="60px" Text="Submit" Width="162px" Font-Size="Large" />
        </td>
        <td class="style37">
        </td>
        <td class="style38">
        </td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td class="style39">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
        <td class="style16">
            &nbsp;</td>
        <td class="style15">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

