<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPageUser.master" AutoEventWireup="false" CodeFile="userselectbook.aspx.vb" Inherits="User_userselectbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style12
    {
        width: 100%;
        height: 950px;
        border: none;
    }
    .style14
    {
        height: 636px;
        border: groove;
    }
        .style16
        {
            height: 250px;
        }
        .style18
        {
            height: 34px;
        }
        .style19
        {
            height: 40px;
        }
        .style23
        {
            height: 34px;
            width: 54px;
        }
        .style25
        {
            height: 60px;
            width: 54px;
        }
        .style27
        {
            height: 44px;
        }
        .style28
        {
            width: 54px;
        }
        .style29
        {
            border-style: groove;
            border-color: inherit;
            border-width: medium;
            height: 57px;
        }
        .style30
        {
            height: 117px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style12">
    <tr>
        <td class="style14" colspan="4" style="border-style: none; vertical-align: top">
        <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Left" 
                        DataSourceID="SqlDataSource1" Width="200px" DataKeyField="bookid" 
                        RepeatColumns="5" >
                        <ItemStyle VerticalAlign="Top" />
                       <ItemTemplate>
                       <div class= "row booklist">
                       <div class="col-4">
                           <table align="center" class="style14">
                               <tr>
                                   <td colspan="2" style="vertical-align: middle; text-align: center;" 
                                       class="style16">
                                       <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("bookimage") %>' 
                                           Width="250px" Height="250px" />
                                   </td>
                               </tr>
                               <tr>
                                   <td class="style23">
                                        </td>
                                   <td class="style18">
                                   </td>
                               </tr>
                               <tr>
                                   <td class="style28">
                                       <strong style="vertical-align: top; text-align: center;">Book:<br />&nbsp;&nbsp; </strong></td>
                                   <td class="style19" style="text-align: left; vertical-align: middle">
                                       <asp:Label ID="Label1" runat="server" Font-Size="Large" 
                                           Text='<%# Eval("bookname") %>' Height="40px"></asp:Label>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="style25">
                                       <strong style="vertical-align: top; text-align: left;">Author:<br />&nbsp;&nbsp; </strong></td>
                                   <td class="style31" style="text-align: left; vertical-align: middle">
                                       <asp:Label ID="Label2" runat="server" Text='<%# Eval("authorname") %>' 
                                           Font-Size="Large" Height="40px"></asp:Label>
                                       </td>
                               </tr>
                               <tr>
                                   <td class="style28">
                                       <strong style="vertical-align: top; text-align: left;">Type:<br />&nbsp;&nbsp; </strong></td>
                                   <td class="style19" style="text-align: left; vertical-align: top">
                                       <asp:Label ID="Label3" runat="server" Text='<%# Eval("booktype") %>' 
                                           Font-Size="Large" Height="40px"></asp:Label>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="style28">
                                       <strong style="vertical-align: top; text-align: left;">Price:<br />&nbsp;&nbsp;&nbsp; </strong></td>
                                   <td class="style19" style="text-align: left; vertical-align: middle">
                                       <asp:Label ID="Label4" runat="server" Text='<%# Eval("bookprice") %>' 
                                           Font-Size="Large" Height="40px"></asp:Label>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="style27" colspan="2" 
                                       style="text-align: center; vertical-align: middle">
                                       <asp:Button ID="btnrequest" runat="server" BackColor="#000099" 
                                           CommandArgument='<%# Eval("bookid") %>' CommandName="cmdselect" 
                                           ForeColor="White" Height="46px" Text="Send Request" Width="194px" />
                                   </td>
                               </tr>
                           </table>
                       </div>
                       </div>
                       </ItemTemplate>

                    </asp:DataList>
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
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionStringBooks %>" 
                        SelectCommand="SELECT * FROM [tblbooks]"></asp:SqlDataSource>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style29" colspan="4" style="border-style: none; vertical-align: top">
            <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"></asp:Label>
            &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style30">
            </td>
        <td class="style30">
            </td>
        <td class="style30">
            </td>
        <td class="style30">
            </td>
    </tr>
</table>
</asp:Content>

