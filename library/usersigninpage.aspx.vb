
Imports System.Data.SqlClient
Imports System.Data

Partial Class usersigninpage
    Inherits System.Web.UI.Page
    Dim constring As String = ConfigurationManager.ConnectionStrings("ConnectionStringBooks").ToString()
    Dim con As New SqlConnection(constring)
    Dim cmd As New SqlCommand
    Dim dt As DataTable
    Dim da As SqlDataAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = constring
            cmd.Connection = con
        Catch ex As Exception
            lblmsg.Text = ex.Message()
        End Try
    End Sub

    Protected Sub btnregister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister.Click
        Try
            cmd.CommandText = "insert into tbluser(username,password,email,contactno,address,age) values('" & txtusername.Text & "','" & txtpassword.Text & "','" & txtemail.Text & "'," & txtcontactno.Text & ",'" & txtaddress.Text & "'," & txtage.Text & ")"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            lblmsg.Text = "record Inserted"
            Response.Redirect("userloginpage.aspx")
        Catch ex As Exception
            lblmsg.Text = "Invalid data"
        End Try
    End Sub

End Class
