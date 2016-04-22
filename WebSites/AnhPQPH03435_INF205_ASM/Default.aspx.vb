
Partial Class _Default
    Inherits Page

    Private Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs) Handles GridView1.RowCommand
        ' Insert data if the CommandName == "Insert"
        ' and the validation controls indicate valid data...
        If e.CommandName = "Insert" AndAlso Page.IsValid Then
            ' Insert new record...
            SqlDataSource6.Insert()
        End If

    End Sub

    Protected Sub SqlDataSource6_Inserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceCommandEventArgs) Handles SqlDataSource6.Inserting
        Dim newMaHD As DropDownList = GridView1.FooterRow.FindControl("MaHdDDL")
        Dim newMaSP As DropDownList = GridView1.FooterRow.FindControl("MaSpDDL")
        Dim newQuantity As TextBox = GridView1.FooterRow.FindControl("txtQuantity")


        e.Command.Parameters("@mahd").Value = newMaHD.SelectedValue
        e.Command.Parameters("@masp").Value = newMaSP.SelectedValue
        e.Command.Parameters("@soluong").Value = newQuantity.Text
    End Sub

    Private Sub GridView2_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs) Handles GridView2.RowCommand
        ' Insert data if the CommandName == "Insert"
        ' and the validation controls indicate valid data...
        If e.CommandName = "InsertHD" AndAlso Page.IsValid Then
            ' Insert new record...
            SqlDataSource7.Insert()
        End If

    End Sub

    Protected Sub SqlDataSource7_Inserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceCommandEventArgs) Handles SqlDataSource7.Inserting
        Dim newSoHD As TextBox = GridView2.FooterRow.FindControl("txtSoHd")
        Dim newMaKH As DropDownList = GridView2.FooterRow.FindControl("MaKhDDL")

        e.Command.Parameters("@sohd").Value = newSoHD.Text
        e.Command.Parameters("@makh").Value = newMaKH.SelectedValue
    End Sub

    Private Sub GridView3_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs) Handles GridView3.RowCommand
        ' Insert data if the CommandName == "Insert"
        ' and the validation controls indicate valid data...
        If e.CommandName = "InsertKh" AndAlso Page.IsValid Then
            ' Insert new record...
            SqlDataSource8.Insert()
        End If

    End Sub

    Protected Sub SqlDataSource8_Inserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceCommandEventArgs) Handles SqlDataSource8.Inserting
        Dim newHoten As TextBox = GridView3.FooterRow.FindControl("txtHoten")
        Dim newEmail As TextBox = GridView3.FooterRow.FindControl("txtEmail")

        e.Command.Parameters("@hoten").Value = newHoten.Text
        e.Command.Parameters("@email").Value = newEmail.Text
    End Sub

    Private Sub GridView4_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs) Handles GridView4.RowCommand
        ' Insert data if the CommandName == "Insert"
        ' and the validation controls indicate valid data...
        If e.CommandName = "InsertSp" AndAlso Page.IsValid Then
            ' Insert new record...
            SqlDataSource9.Insert()
        End If

    End Sub

    Protected Sub SqlDataSource9_Inserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceCommandEventArgs) Handles SqlDataSource9.Inserting
        Dim newMaDM As DropDownList = GridView4.FooterRow.FindControl("MaDmDDL")
        Dim newDonvi As TextBox = GridView4.FooterRow.FindControl("txtDonvi")
        Dim newTenSP As TextBox = GridView4.FooterRow.FindControl("txtTenSp")
        Dim newGiaSP As TextBox = GridView4.FooterRow.FindControl("txtGiaSp")
        Dim newMota As TextBox = GridView4.FooterRow.FindControl("txtMota")
        Dim newAnh As TextBox = GridView4.FooterRow.FindControl("txtAnh")

        e.Command.Parameters("@madm").Value = newMaDM.SelectedValue
        e.Command.Parameters("@donvi").Value = newDonvi.Text
        e.Command.Parameters("@tensp").Value = newTenSP.Text
        e.Command.Parameters("@giasp").Value = newGiaSP.Text
        e.Command.Parameters("@mota").Value = newMota.Text
        e.Command.Parameters("@anh").Value = newAnh.Text
    End Sub

    Private Sub GridView5_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs) Handles GridView5.RowCommand
        ' Insert data if the CommandName == "Insert"
        ' and the validation controls indicate valid data...
        If e.CommandName = "InsertDM" AndAlso Page.IsValid Then
            ' Insert new record...
            SqlDataSource10.Insert()
        End If

    End Sub

    Protected Sub SqlDataSource10_Inserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceCommandEventArgs) Handles SqlDataSource10.Inserting
        Dim newTenDM As TextBox = GridView5.FooterRow.FindControl("txtTenDM")
        Dim newDMCha As DropDownList = GridView5.FooterRow.FindControl("DMChaDDL")

        e.Command.Parameters("@tendm").Value = newTenDM.Text
        If newDMCha.SelectedValue <> "" Then
            e.Command.Parameters("@madm_cha").Value = newDMCha.SelectedValue
        Else
            e.Command.Parameters("@madm_cha").Value = Nothing
        End If
    End Sub

End Class