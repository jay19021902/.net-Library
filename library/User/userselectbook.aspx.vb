
Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class User_userselectbook
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
            'DataList1.DataSource = dt
            DataList1.DataBind()
        Catch ex As Exception
            lblmsg.Text = ex.Message()
        End Try
    End Sub

    Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "cmdselect" Then
            lblmsg.Text = e.CommandArgument


            Dim userid1 As String = Session("userid")
            Dim time As Date = Now

            Try

                ' Fetching data from tbluser table 
                cmd.CommandText = "select * from tbluser where userid = " & userid1 & ""
                da = New SqlDataAdapter(cmd)
                dt = New DataTable
                da.Fill(dt)
                Dim userid As Integer = dt.Rows(0)(0)
                Dim name As String = dt.Rows(0)(1)
                Dim email As String = dt.Rows(0)(3)
                Dim contactno As Long = dt.Rows(0)(4)
                Dim age As Integer = dt.Rows(0)(5)
                Dim address As String = dt.Rows(0)(6)
                Label1.Text = userid.ToString

                ' Fetching data from tblbooks table 
                cmd.CommandText = "select * from tblbooks where bookid = '" & e.CommandArgument & "'"
                da = New SqlDataAdapter(cmd)
                dt = New DataTable
                da.Fill(dt)
                Dim bookid As Integer = dt.Rows(0)(0)
                Dim bookname As String = dt.Rows(0)(1)
                Dim authorname As String = dt.Rows(0)(2)
                Dim bookprice As Integer = dt.Rows(0)(3)
                Dim booktype As String = dt.Rows(0)(4)
                Dim bookdesc As String = dt.Rows(0)(5)
                Dim bookimg As String = dt.Rows(0)(6)
                Label2.Text = bookname.ToString

                ' set data to tblrequest book
                cmd.CommandText = "insert into tblbookrequest(userid,username,bookid,bookname,authorname,bookprice,booktype,bookdesc,bookimage,requesttime) values('" & userid & "','" & name & "'," & bookid & ",'" & bookname & "','" & authorname & "','" & bookprice & "','" & booktype & "','" & bookdesc & "','" & bookimg & "','" & Now & "')"
                con.Open()
                cmd.ExecuteNonQuery()
                lblmsg.Text = "record Inserted"
                con.Close()
            Catch ex As Exception
                lblmsg.Text = ex.Message()
            End Try


        End If
    End Sub
End Class

