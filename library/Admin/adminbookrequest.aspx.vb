
Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_adminbookrequest
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
        Dim username As String = Session("username")
        Try
            cmd.CommandText = "select * from tblbookrequest "
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


    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "selected" Then
            lblmsg.Text = e.CommandArgument

            Try
                ' Fetching data from tbluser table 
                cmd.CommandText = "select * from tblbookrequest where requestid = " & e.CommandArgument & " "
                da = New SqlDataAdapter(cmd)
                dt = New DataTable
                da.Fill(dt)
                Dim requestid As Integer = dt.Rows(0)(0)
                Dim userid As Integer = dt.Rows(0)(1)
                Dim username As String = dt.Rows(0)(2)
                Dim bookid As Integer = dt.Rows(0)(3)
                Dim bookname As String = dt.Rows(0)(4)
                Dim authorname As String = dt.Rows(0)(5)
                Dim booktype As String = dt.Rows(0)(6)
                Dim bookprice As Integer = dt.Rows(0)(7)
                Dim bookdesc As String = dt.Rows(0)(8)
                Dim bookimg As String = dt.Rows(0)(9)
                Dim requesttime As String = dt.Rows(0)(10)
                Label1.Text = username.ToString

                ' set data to tblbookissue
                cmd.CommandText = "insert into tblbookissue(issueid,userid,username,bookid,bookname,authorname,bookprice,booktype,bookdesc,bookimage,requesttime,issuetime) values('" & requestid & "','" & userid & "','" & username & "'," & bookid & ",'" & bookname & "','" & authorname & "','" & bookprice & "','" & booktype & "','" & bookdesc & "','" & bookimg & "','" & requesttime & "','" & Now & "')"
                con.Open()
                cmd.ExecuteNonQuery()
                lblmsg.Text = "record Inserted"
                con.Close()
                fillgrid()

                'delete data from tblbookrequest
                cmd.CommandText = "delete from tblbookrequest where requestid = '" & requestid & "'"
                con.Open()
                cmd.ExecuteNonQuery()
                lblmsg.Text = "Book issued"
                con.Close()
            Catch ex As Exception
                lblmsg.Text = ex.Message()
            End Try
        End If
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        fillgrid()
    End Sub
End Class

