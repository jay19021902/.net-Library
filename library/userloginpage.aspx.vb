
Imports System.Data.SqlClient
Imports System.Data

Partial Class userloginpage
    Inherits System.Web.UI.Page
    Dim constring As String = ConfigurationManager.ConnectionStrings("ConnectionStringBooks").ToString()
    Dim con As New SqlConnection(constring)
    Dim cmd As New SqlCommand
    Dim dt As DataTable
    Dim da As SqlDataAdapter
    Dim dr As SqlDataReader
   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = constring
            cmd.Connection = con
        Catch ex As Exception
            lblmsg.Text = ex.Message()
        End Try
    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Try
            cmd.CommandText = "select * from tbluser where username = '" & txtusername.Text & "' and password = '" & txtpassword.Text & "'"
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)

            con.Open()
            Dim userid As Integer = cmd.ExecuteScalar()
            con.Close()


            If dt.Rows.Count > 0 Then
                lblmsg.Text = userid.ToString()
                Session("userid") = userid
                Session("username") = txtusername.Text
                Response.Redirect("~/User/userselectbook.aspx")
            Else
                lblmsg.Text = "Incorrect username or password"
            End If
        Catch ex As Exception
                lblmsg.Text = ex.Message()
        End Try
    End Sub

    Protected Sub btnadmin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadmin.Click

    End Sub
End Class
