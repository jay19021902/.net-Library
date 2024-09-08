
Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class Admin_adminbookdata
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
        Try
            cmd.CommandText = "select * from tblbooks order by bookid"
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)
            GridView2.DataSource = dt
            GridView2.DataBind()
        Catch ex As Exception
            lblmsg.Text = ex.Message()
        End Try
    End Sub

    Protected Sub GridView2_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView2.RowDeleting
        Try
            Dim vid As Integer = GridView2.DataKeys(e.RowIndex).Value
            Dim vimage As String = GridView2.DataKeys(e.RowIndex).Values("bookimage").ToString()
            cmd.CommandText = "delete from tblbooks where bookid = " & vid & " "
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            fillgrid()

            Dim fileexist As String = Server.MapPath(vimage)
            'If File.Exists(fileexist) Then
            'File.Delete(fileexist)
            'End If

        Catch ex As Exception
            lblmsg.Text = ex.Message()
        End Try

    End Sub
    Protected Sub GridView2_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView2.PageIndexChanging
        GridView2.PageIndex = e.NewPageIndex
        fillgrid()
    End Sub
End Class

