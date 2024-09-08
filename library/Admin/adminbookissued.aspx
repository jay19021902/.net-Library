<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="adminbookissued.aspx.vb" Inherits="Admin_adminbookissued" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style12
    {
        border-style: none;
        border-color: inherit;
        border-width: medium;
        width: 100%;
        height: 744px;
        }
    .style14
    {
        border-style: groove;
        border-color: inherit;
        border-width: medium;
height: 379px;
        }
        .style29
        {
            border-style: groove;
            border-color: inherit;
            border-width: medium;
            height: 57px;
        }
        .style31
     {
         border-style: groove;
         border-color: inherit;
         border-width: medium;
         height: 54px;
     }
     .style32
     {
         font-size: xx-large;
     }
     .style33
     {
         height: 63px;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style12">
    <tr>
        <td class="style31" colspan="4" 
            style="border-style: none; vertical-align: middle; text-align: left;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style32">Book Issued :</span> &nbsp;</td>
    </tr>
    <tr>
        <td class="style14" colspan="4" style="border-style: none; vertical-align: top">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="issueid" 
                Height="200px" Width="1300px">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnselect" runat="server" BackColor="#000099" 
                                CommandArgument='<%# Eval("issueid") %>' CommandName="selected" 
                                ForeColor="White" Height="50px" Text="Book Returned" Width="150px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="issueid" HeaderText="Issue id" />
                    <asp:BoundField DataField="userid" HeaderText="User id" />
                    <asp:BoundField DataField="username" HeaderText="User name" />
                    <asp:BoundField DataField="bookid" HeaderText="Book id" />
                    <asp:BoundField DataField="bookname" HeaderText="Book Name" />
                    <asp:BoundField DataField="authorname" HeaderText="Author" />
                    <asp:BoundField DataField="booktype" HeaderText="Book Type" />
                    <asp:BoundField DataField="bookprice" HeaderText="Price" />
                    <asp:BoundField DataField="issuetime" HeaderText="Issued date" />
                    <asp:ImageField DataImageUrlField="bookimage" HeaderText="Book image">
                        <ControlStyle Height="60px" Width="60px" />
                    </asp:ImageField>
                </Columns>
                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="style29" colspan="4" style="border-style: none; vertical-align: top">
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style33">
            </td>
        <td class="style33">
            </td>
        <td class="style33">
            </td>
        <td class="style33">
            </td>
    </tr>
</table>
</asp:Content>

