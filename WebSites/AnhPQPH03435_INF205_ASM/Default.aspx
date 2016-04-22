<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3></h3>
    <ol class="round">
        <li class="one tblMain">
            <h5>Hóa đơn chi tiết</h5>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="mahdct" DataSourceID="SqlDataSource6" AllowPaging="True" AllowSorting="True" ShowFooter="true">
                <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                <Columns>
                    <asp:TemplateField HeaderText="M&#227; HD chi tiết" SortExpression="mahdct">
                        <EditItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("mahdct") %>' ID="Label1"></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("mahdct") %>' ID="Label1"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="130px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="M&#227; h&#243;a đơn" SortExpression="mahd">
                        <EditItemTemplate>
                            <asp:DropDownList ID="EditMaHd" runat="server" SelectedValue='<%# Bind("mahd") %>' DataSourceID="SqlDataSource7" DataTextField="mahd" DataValueField="mahd"></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("mahd") %>' ID="Label2"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="MaHdDDL" runat="server" DataSourceID="SqlDataSource7" DataTextField="mahd" DataValueField="mahd"></asp:DropDownList>
                        </FooterTemplate>
                        <ItemStyle Width="130px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="M&#227; sản phẩm" SortExpression="masp">
                        <EditItemTemplate>
                            <asp:DropDownList ID="EditMaSp" runat="server" SelectedValue='<%# Bind("masp") %>' DataSourceID="SqlDataSource9" DataTextField="masp" DataValueField="masp"></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("masp") %>' ID="Label3"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="MaSpDDL" runat="server" DataSourceID="SqlDataSource9" DataTextField="masp" DataValueField="masp"></asp:DropDownList>
                        </FooterTemplate>
                        <ItemStyle Width="130px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Số lượng" SortExpression="soluong">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("soluong") %>' ID="TextBox3"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="validEditQtt" runat="server" ErrorMessage="Số lượng không được để trống" ControlToValidate="TextBox3" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("soluong") %>' ID="Label4"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="insertHdct" ID="validInsertQtt" runat="server" ErrorMessage="Số lượng không được để trống" ControlToValidate="txtQuantity" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemStyle Width="130px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Lựa chọn">
                        <EditItemTemplate>
                            <asp:LinkButton runat="server" Text="Cập nhật" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Hủy" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Sửa" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Xóa" CommandName="Delete" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsert" ValidationGroup="insertHdct" runat="server" CommandName="Insert" Text="Thêm"></asp:LinkButton>
                        </FooterTemplate>
                        <ItemStyle Width="110px"></ItemStyle>
                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
            
            </asp:GridView>
            <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="insertHdct" runat="server" ForeColor="Red" />
            <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:AnhPQPH03435_INF205_ASMConnectionString6 %>' DeleteCommand="DELETE FROM [hoa_don_chi_tiet] WHERE [mahdct] = @mahdct" InsertCommand="INSERT INTO [hoa_don_chi_tiet] ([mahd], [masp], [soluong]) VALUES (@mahd, @masp, @soluong)" SelectCommand="SELECT [mahdct], [mahd], [masp], [soluong] FROM [hoa_don_chi_tiet]" UpdateCommand="UPDATE [hoa_don_chi_tiet] SET [mahd] = @mahd, [masp] = @masp, [soluong] = @soluong WHERE [mahdct] = @mahdct">
                <DeleteParameters>
                    <asp:Parameter Name="mahdct" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="mahd" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="masp" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="soluong" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="mahd" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="masp" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="soluong" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="mahdct" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two tblMain">
            <h5>Hóa đơn</h5>
            
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="mahd" DataSourceID="SqlDataSource7" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" ShowFooter="true">
                <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                <Columns>
                    <asp:TemplateField HeaderText="M&#227; h&#243;a đơn" SortExpression="mahd">
                        <EditItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("mahd") %>' ID="Label1"></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("mahd") %>' ID="Label1"></asp:Label>
                        </ItemTemplate>

                        <ItemStyle Width="120px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Số h&#243;a đơn" SortExpression="sohd">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("sohd") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="validEditShd" runat="server" ErrorMessage="Số hóa đơn không được để trống" ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("sohd") %>' ID="Label2"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtSoHd" runat="server" Text='<%# Bind("sohd") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="insertHd" ID="validInsertShd" runat="server" ErrorMessage="Số hóa đơn không được để trống" ControlToValidate="txtSoHd" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemStyle Width="120px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="M&#227; kh&#225;ch h&#224;ng" SortExpression="makh">
                        <EditItemTemplate>
                            <asp:DropDownList ID="EditMaKh" runat="server" DataSourceID="SqlDataSource8" DataTextField="makh" DataValueField="makh" SelectedValue='<%# Bind("makh") %>'></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("makh") %>' ID="Label3"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="MaKhDDL" runat="server" DataSourceID="SqlDataSource8" DataTextField="makh" DataValueField="makh"></asp:DropDownList>
                        </FooterTemplate>
                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Lựa chọn" ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton runat="server" Text="Cập nhật" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Hủy" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Sửa" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Xóa" CommandName="Delete" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsertHd" ValidationGroup="insertHd" runat="server" CommandName="InsertHD" Text="Thêm"></asp:LinkButton>
                        </FooterTemplate>
                        <ItemStyle Width="110px"></ItemStyle>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:ValidationSummary ID="ValidationSummmary2" ValidationGroup="insertHd" runat="server" ForeColor="Red"></asp:ValidationSummary>
            <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:AnhPQPH03435_INF205_ASMConnectionString7 %>' DeleteCommand="DELETE FROM [hoa_don] WHERE [mahd] = @mahd" InsertCommand="INSERT INTO [hoa_don] ([sohd], [makh]) VALUES (@sohd, @makh)" SelectCommand="SELECT [mahd], [sohd], [makh] FROM [hoa_don]" UpdateCommand="UPDATE [hoa_don] SET [sohd] = @sohd, [makh] = @makh WHERE [mahd] = @mahd">
                <DeleteParameters>
                    <asp:Parameter Name="mahd" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sohd" Type="String"></asp:Parameter>
                    <asp:Parameter Name="makh" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sohd" Type="String"></asp:Parameter>
                    <asp:Parameter Name="makh" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="mahd" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three tblMain">
            <h5>Khách hàng</h5>
            
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="makh" DataSourceID="SqlDataSource8" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" ShowFooter="true">
                <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                <Columns>
                    <asp:TemplateField HeaderText="M&#227; kh&#225;ch h&#224;ng" SortExpression="makh">
                        <EditItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("makh") %>' ID="Label1"></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("makh") %>' ID="Label1"></asp:Label>
                        </ItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Họ t&#234;n" SortExpression="hoten">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("hoten") %>' ID="TextBox1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidEditHoten" runat="server" ErrorMessage="Họ tên không được để trống" ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("hoten") %>' ID="Label2"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" ID="txtHoten"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="InsertKh" ID="ValidInsertHoten" runat="server" ErrorMessage="Họ tên không được để trống" ControlToValidate="txtHoten" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemStyle Width="250px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="email">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("email") %>' ID="TextBox2"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidEditEmail" runat="server" ErrorMessage="Email không được để trống" ControlToValidate="TextBox2" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("email") %>' ID="Label3"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="InsertKh" ID="ValidInsertEmail" runat="server" ErrorMessage="Email không được để trống" ControlToValidate="txtEmail" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemStyle Width="300px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Lựa chọn" ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton runat="server" Text="Cập nhật" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Hủy" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Sửa" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Xóa" CommandName="Delete" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsertKh" ValidationGroup="InsertKh" runat="server" CommandName="InsertKh" Text="Thêm"></asp:LinkButton>
                        </FooterTemplate>
                        <ItemStyle Width="110px"></ItemStyle>
                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:ValidationSummary ValidationGroup="InsertKh" ID="ValidationSummary3" ForeColor="Red" runat="server" />
            <asp:SqlDataSource runat="server" ID="SqlDataSource8" ConnectionString='<%$ ConnectionStrings:AnhPQPH03435_INF205_ASMConnectionString8 %>' DeleteCommand="DELETE FROM [khach_hang] WHERE [makh] = @makh" InsertCommand="INSERT INTO [khach_hang] ([hoten], [email]) VALUES (@hoten, @email)" SelectCommand="SELECT [makh], [hoten], [email] FROM [khach_hang]" UpdateCommand="UPDATE [khach_hang] SET [hoten] = @hoten, [email] = @email WHERE [makh] = @makh">
                <DeleteParameters>
                    <asp:Parameter Name="makh" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="hoten" Type="String"></asp:Parameter>
                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="hoten" Type="String"></asp:Parameter>
                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="makh" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="four tblMain">
            <h5>Sản phẩm</h5>
            
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="masp" DataSourceID="SqlDataSource9" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" ShowFooter="true">
                <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                <Columns>
                    <asp:TemplateField HeaderText="M&#227; SP" SortExpression="masp">
                        <EditItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("masp") %>' ID="Label1"></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("masp") %>' ID="Label1"></asp:Label>
                        </ItemTemplate>

                        <ItemStyle Width="70px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="M&#227; DM" SortExpression="madm">
                        <EditItemTemplate>
                            <asp:DropDownList ID="EditMaDM" runat="server" SelectedValue='<%# Bind("madm") %>' DataSourceID="SqlDataSource10" DataTextField="madm" DataValueField="madm"></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("madm") %>' ID="Label2"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="MaDmDDL" ValidationGroup="InsertSp" runat="server" DataSourceID="SqlDataSource10" DataTextField="madm" DataValueField="madm"></asp:DropDownList>
                        </FooterTemplate>
                        <ItemStyle Width="70px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Đơn vị" SortExpression="donvi">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("donvi") %>' ID="EditDv"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidEditDv" runat="server" ErrorMessage="Đơn vị không được để trống" ControlToValidate="EditDv" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("donvi") %>' ID="Label3"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" ID="txtDonvi"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidInsertDv" ValidationGroup="InsertSp" runat="server" ErrorMessage="Đơn vị không được để trống" ControlToValidate="txtDonvi" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemStyle Width="110px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="T&#234;n SP" SortExpression="tensp">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("tensp") %>' ID="EditTenSp"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidEditTensp" runat="server" ErrorMessage="Tên sản phẩm không được để trống" ControlToValidate="EditTenSp" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("tensp") %>' ID="Label4"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" ID="txtTenSp"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidInsertTensp" ValidationGroup="InsertSp" runat="server" ErrorMessage="Tên sản phẩm không được để trống" ControlToValidate="txtTenSp" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemStyle Width="110px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gi&#225; SP" SortExpression="giasp">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("giasp") %>' ID="EditGiaSp"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidEditGiasp" runat="server" ErrorMessage="Giá sản phẩm không được để trống" ControlToValidate="EditGiaSp" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("giasp") %>' ID="Label5"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" ID="txtGiaSp"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidInsertGiasp" ValidationGroup="InsertSp" runat="server" ErrorMessage="Giá sản phẩm không được để trống" ControlToValidate="txtGiaSp" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemStyle Width="110px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="M&#244; tả" SortExpression="mota">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("mota") %>' ID="EditMota"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidEditMota" runat="server" ErrorMessage="Mô tả không được để trống" ControlToValidate="EditMota" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("mota") %>' ID="Label6"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" ID="txtMota"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidInsertMota" ValidationGroup="InsertSp" runat="server" ErrorMessage="Mô tả không được để trống" ControlToValidate="txtMota" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ảnh" SortExpression="anh">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("anh") %>' ID="EditAnh"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("anh") %>' ID="Label7"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" ID="txtAnh"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Lựa chọn" ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton runat="server" Text="Cập nhật" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Hủy" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Sửa" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Xóa" CommandName="Delete" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsertSp" ValidationGroup="InsertSp" runat="server" CommandName="InsertSp" Text="Thêm"></asp:LinkButton>
                        </FooterTemplate>
                        <ItemStyle Width="90px"></ItemStyle>
                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:ValidationSummary ID="ValidationSummary4" ValidationGroup="InsertSp" runat="server" ForeColor="Red" />
            <asp:SqlDataSource runat="server" ID="SqlDataSource9" ConnectionString='<%$ ConnectionStrings:AnhPQPH03435_INF205_ASMConnectionString9 %>' DeleteCommand="DELETE FROM [san_pham] WHERE [masp] = @masp" InsertCommand="INSERT INTO [san_pham] ([madm], [donvi], [tensp], [giasp], [mota], [anh]) VALUES (@madm, @donvi, @tensp, @giasp, @mota, @anh)" SelectCommand="SELECT [masp], [madm], [donvi], [tensp], [giasp], [mota], [anh] FROM [san_pham]" UpdateCommand="UPDATE [san_pham] SET [madm] = @madm, [donvi] = @donvi, [tensp] = @tensp, [giasp] = @giasp, [mota] = @mota, [anh] = @anh WHERE [masp] = @masp">
                <DeleteParameters>
                    <asp:Parameter Name="masp" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="madm" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="donvi" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tensp" Type="String"></asp:Parameter>
                    <asp:Parameter Name="giasp" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="mota" Type="String"></asp:Parameter>
                    <asp:Parameter Name="anh" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="madm" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="donvi" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tensp" Type="String"></asp:Parameter>
                    <asp:Parameter Name="giasp" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="mota" Type="String"></asp:Parameter>
                    <asp:Parameter Name="anh" Type="String"></asp:Parameter>
                    <asp:Parameter Name="masp" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="five tblMain">
            <h5>Danh mục sản phẩm</h5>
            
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="madm" DataSourceID="SqlDataSource10" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" ShowFooter="True">
                <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                <Columns>
                    <asp:TemplateField HeaderText="M&#227; danh mục" SortExpression="madm">
                        <EditItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("madm") %>' ID="Label1"></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("madm") %>' ID="Label1"></asp:Label>
                        </ItemTemplate>

                        <ItemStyle Width="120px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="T&#234;n danh mục" SortExpression="tendm">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("tendm") %>' ID="EditTenDM"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidEditTendm" runat="server" ControlToValidate="EditTenDM" ErrorMessage="Tên danh mục không được để trống" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("tendm") %>' ID="Label2"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox runat="server" ID="txtTenDM"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidInsertTendm" ValidationGroup="InsertDM" runat="server" ControlToValidate="txtTenDM" ErrorMessage="Tên danh mục không được để trống" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemStyle Width="200px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="M&#227; DM cha" SortExpression="madm_cha">
                        <EditItemTemplate>
                            <asp:DropDownList ID="EditDMCha" runat="server" SelectedValue='<%# Bind("madm_cha") %>' DataSourceID="SqlDataSource10" DataTextField="madm" DataValueField="madm" AutoPostBack="true" AppendDataBoundItems="True">
                                <asp:ListItem Text="" Value="" />
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("madm_cha") %>' ID="Label3"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="DMChaDDL" runat="server" DataSourceID="SqlDataSource10" DataTextField="madm" DataValueField="madm" AutoPostBack="true" AppendDataBoundItems="True">
                                <asp:ListItem Text="" Value="" />
                            </asp:DropDownList>
                        </FooterTemplate>
                        <ItemStyle Width="120px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Lựa chọn" ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton runat="server" Text="Cập nhật" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Hủy" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Sửa" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Xóa" CommandName="Delete" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsertDM" ValidationGroup="InsertDM" CommandName="InsertDM" runat="server" Text="Thêm"></asp:LinkButton>
                        </FooterTemplate>
                        <ItemStyle Width="110px"></ItemStyle>
                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:ValidationSummary ID="ValidationSummary5" ValidationGroup="InsertDM" ForeColor="Red" runat="server" />
            <asp:SqlDataSource runat="server" ID="SqlDataSource10" ConnectionString='<%$ ConnectionStrings:AnhPQPH03435_INF205_ASMConnectionString10 %>' DeleteCommand="DELETE FROM [danh_muc_san_pham] WHERE [madm] = @madm" InsertCommand="INSERT INTO [danh_muc_san_pham] ([tendm], [madm_cha]) VALUES (@tendm, @madm_cha)" SelectCommand="SELECT [madm], [tendm], [madm_cha] FROM [danh_muc_san_pham]" UpdateCommand="UPDATE [danh_muc_san_pham] SET [tendm] = @tendm, [madm_cha] = @madm_cha WHERE [madm] = @madm">
                <DeleteParameters>
                    <asp:Parameter Name="madm" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="tendm" Type="String"></asp:Parameter>
                    <asp:Parameter Name="madm_cha" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tendm" Type="String"></asp:Parameter>
                    <asp:Parameter Name="madm_cha" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="madm" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
