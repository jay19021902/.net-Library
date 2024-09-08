Imports System.Data.SqlClient
Imports System.Data

Partial Class User_usereditprofile
    Inherits System.Web.UI.Page
    Dim constring As String = ConfigurationManager.ConnectionStrings("ConnectionStringBooks").ToString()
    Dim con As New SqlConnection(constring)
    Dim cmd As New SqlCommand
    Dim dt As DataTable
    Dim da As SqlDataAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim userid As String = Session("userid")
        Try
            con.ConnectionString = constring
            cmd.Connection = con
        Catch ex As Exception
            lblmsg.Text = ex.Message()
        End Try

        If IsPostBack = False Then
            Try
                cmd.CommandText = "select * from tbluser where userid = " & userid & ""
                da = New SqlDataAdapter(cmd)
                dt = New DataTable
                da.Fill(dt)

                Dim name As String = dt.Rows(0)(1)
                txtusername.Text = name

                Dim email As String = dt.Rows(0)(3)
                txtemail.Text = email

                Dim contactno As String = dt.Rows(0)(4)
                txtcno.Text = contactno

                Dim age As String = dt.Rows(0)(5)
                txtage.Text = age

                Dim address As String = dt.Rows(0)(6)
                txtaddress.Text = address

            Catch ex As Exception
                lblmsg.Text = ex.Message()
            End Try
        End If
        
    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim userid As String = Session("userid")
        Try
            cmd.CommandText = "update tbluser set username='" & txtusername.Text & "',email='" & txtemail.Text & "',contactno=" & txtcno.Text & ",age=" & txtage.Text & ",address='" & txtaddress.Text & "' where userid=" & userid & ""
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            cmd.CommandText = "update tblbookrequest set username='" & txtusername.Text & "' where userid=" & userid & ""
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            cmd.CommandText = "update tblbookissue set username='" & txtusername.Text & "' where userid=" & userid & ""
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            cmd.CommandText = "update tblbookreturned set username='" & txtusername.Text & "' where userid=" & userid & ""
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            lblmsg.Text = "record Updated"
            'Response.Redirect("~/User/userprofile.aspx")
        Catch ex As Exception
            lblmsg.Text = ex.Message()
        End Try
    End Sub
End Class
