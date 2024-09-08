
Imports System.Data.SqlClient
Imports System.Data

Partial Class User_userprofile
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


        Try
            cmd.CommandText = "select * from tbluser where userid = " & userid & ""
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)

            Dim name As String = dt.Rows(0)(1)
            lblusername.Text = name

            Dim email As String = dt.Rows(0)(3)
            lblemail.Text = email

            Dim contactno As String = dt.Rows(0)(4)
            lblcontactno.Text = contactno

            Dim age As String = dt.Rows(0)(5)
            lblage.Text = age

            Dim address As String = dt.Rows(0)(6)
            lbladdress.Text = address
        Catch ex As Exception
            lblmsg.Text = ex.Message()
        End Try
    End Sub


    Protected Sub btneditprofile_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btneditprofile.Click

    End Sub
End Class



