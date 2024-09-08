
Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class Admin_adminaddbooks
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

    End Sub


    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        If fubookimage.HasFile = True Then
            bookimage = "~/images/books/" + fubookimage.FileName
            fubookimage.SaveAs(Server.MapPath("~/images/books/") + fubookimage.FileName)
        Else

        End If

        Try
            cmd.CommandText = "insert into tblbooks(bookname,authorname,bookprice,booktype,bookdesc,bookimage) values('" & txtbookname.Text & "','" & txtauthorename.Text & "'," & txtbookprice.Text & ",'" & ddlbooktype.SelectedValue & "','" & txtbookdesc.Text & "','" & bookimage & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            lblmsg.Text = "record Inserted"
            con.Close()
        Catch ex As Exception
            lblmsg.Text = "Enter valid data"
        End Try
    End Sub

    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
    '    Try
    '        cmd.CommandText = "delete from tbluser"
    '        con.Open()
    '        cmd.ExecuteNonQuery()
    '        con.Close()
    '        cmd.CommandText = "delete from tblbookissue"
    '        con.Open()
    '        cmd.ExecuteNonQuery()
    '        con.Close()
    '        cmd.CommandText = "delete from tblbookrequest"
    '        con.Open()
    '        cmd.ExecuteNonQuery()
    '        con.Close()
    '        cmd.CommandText = "delete from tblbookreturned"
    '        con.Open()
    '        cmd.ExecuteNonQuery()
    '        con.Close()
    '        lblmsg.Text = "record Deleted"
    '    Catch ex As Exception
    '        lblmsg.Text = ex.Message()
    '    End Try
    'End Sub
End Class

