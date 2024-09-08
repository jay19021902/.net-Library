
Partial Class adminloginpage
    Inherits System.Web.UI.Page

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        If (txtadminid.Text = "admin" And txtpassword.Text = "admin123") Then
            Response.Redirect("~/Admin/adminaddbooks.aspx")
        Else
            lblmsg.Text = "Invalid admin id or password"
        End If

    End Sub
End Class
