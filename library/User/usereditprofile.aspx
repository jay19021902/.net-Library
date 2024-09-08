<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPageUser.master" AutoEventWireup="false" CodeFile="usereditprofile.aspx.vb" Inherits="User_usereditprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
             width: 101%;
            height: 569px;
        }
        .style15
        {
            height: 36px;
        }
        .style16
        {
            width: 129px;
        }
        .style17
        {
            height: 36px;
            width: 129px;
        }
        .style22
        {
            width: 209px;
        }
        .style23
        {
            height: 36px;
            width: 209px;
        }
        .style24
        {
            width: 529px;
        }
        .style25
        {
            height: 36px;
            width: 529px;
        }
        .style26
        {
            width: 179px;
        }
        .style27
        {
            height: 36px;
            width: 179px;
        }
        .style28
        {
            width: 51px;
            height: 71px;
        }
        .style29
        {
            height: 71px;
            font-size: xx-large;
        }
        .style31
        {
            width: 179px;
            height: 71px;
        }
        .style33
        {
            height: 71px;
        }
        .style34
        {
            width: 209px;
            font-size: x-large;
        }
        .style35
        {
            width: 51px;
            height: 82px;
        }
        .style36
        {
            height: 33px;
            width: 51px;
        }
        .style38
        {
            width: 265px;
            height: 71px;
        }
        .style39
        {
            width: 265px;
        }
        .style40
        {
            height: 36px;
            width: 265px;
        }
        .style41
        {
            width: 51px;
            height: 38px;
        }
        .style42
        {
            width: 209px;
            height: 38px;
        }
        .style43
        {
            width: 529px;
            height: 38px;
        }
        .style44
        {
            width: 179px;
            height: 38px;
        }
        .style45
        {
            width: 265px;
            height: 38px;
        }
        .style46
        {
            height: 38px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style14">
        <tr>
            <td class="style41">
                </td>
            <td class="style42">
                </td>
            <td class="style43">
                </td>
            <td class="style44">
                </td>
            <td class="style45">
                </td>
            <td class="style46">
                </td>
        </tr>
        <tr>
            <td class="style28">
            </td>
            <td class="style29" colspan="2">
                <strong>Edit Information : </strong>
            </td>
            <td class="style31">
                <asp:Button ID="btnback" runat="server" Height="60px" 
                    PostBackUrl="~/User/userprofile.aspx" Text="Back" Width="160px" 
                    BackColor="White" Font-Size="Large" />
            </td>
            <td class="style38">
            </td>
            <td class="style33">
            </td>
        </tr>
        <tr>
            <td class="style36">
                &nbsp;</td>
            <td class="style23">
            </td>
            <td class="style25">
            </td>
            <td class="style27">
            </td>
            <td class="style40">
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style34">
                Name :</td>
            <td class="style24">
                    <asp:TextBox ID="txtusername" runat="server" Height="38px" Width="320px"></asp:TextBox>
                </td>
            <td class="style26">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style34">
                E-mail :</td>
            <td class="style24">
                    <asp:TextBox ID="txtemail" runat="server" Height="38px" Width="320px"></asp:TextBox>
                </td>
            <td class="style26">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style34">
                Contact No :</td>
            <td class="style24">
                    <asp:TextBox ID="txtcno" runat="server" Height="38px" Width="320px" 
                    TextMode="Number"></asp:TextBox>
                </td>
            <td class="style26">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style34">
                Age :</td>
            <td class="style24">
                    <asp:TextBox ID="txtage" runat="server" Height="38px" Width="320px" 
                    TextMode="Number"></asp:TextBox>
                </td>
            <td class="style26">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style34">
                Address :</td>
            <td class="style24">
                    <asp:TextBox ID="txtaddress" runat="server" Height="38px" Width="320px"></asp:TextBox>
                </td>
            <td class="style26">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style24">
                <asp:Button ID="btnsubmit" runat="server" Height="60px" Text="Submit" 
                    Width="168px" BackColor="#000099" Font-Size="Large" ForeColor="White" />
            </td>
            <td class="style26">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                &nbsp;</td>
            <td class="style22">
                <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
            <td class="style24">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>




