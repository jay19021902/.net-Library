
Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class User_userpendingrequest
    Inherits System.Web.UI.Page
    Dim constring As String = ConfigurationManager.ConnectionStrings("ConnectionStringBooks").ToString()
    Dim con As New SqlConnection(constring)
    Dim cmd As New SqlCommand
    Dim dt As DataTable
    Dim da As SqlDataAdapter
    Dim bookimage As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = constring
            cmd.Connection = con
        Catch ex As Exception
            lblmsg.Text = ex.Message()
        End Try

        If IsPostBack = False Then
            fillgrid()
        End If
    End Sub

    Sub fillgrid()
        Dim userid As String = Session("userid")
        Try
            cmd.CommandText = "select * from tblbookrequest where userid = " & userid & " "
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()
        Catch ex As Exception
            lblmsg.Text = ex.Message()
        End Try
    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Try
            Dim vid As Integer = GridView1.DataKeys(e.RowIndex).Value
            'Dim vimage As String = GridView1.DataKeys(e.RowIndex).Values("bookimage").ToString()
            cmd.CommandText = "delete from tblbookrequest where requestid = " & vid & " "
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            fillgrid()

            'Dim fileexist As String = Server.MapPath(vimage)
            'If File.Exists(fileexist) Then
            'File.Delete(fileexist)
            'End If

        Catch ex As Exception
            lblmsg.Text = ex.Message()
        End Try
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        fillgrid()
    End Sub

End Class


