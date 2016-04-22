<%@ Page Title="Giới thiệu" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h2></h2>
    </hgroup>

    <article>
        <p>        
            - Scumbag là cửa hàng thành lập từ tháng 1 năm 2016 tại Hà Nội. Scumbag chuyên cung cấp những sản phẩm dành cho tóc nam.
        </p>

        <p>        
            - Các sản phẩm chính:
            <ul>
                <li>Sản phẩm tạo kiểu: Wax, Clay, Pomade, Pre-styling</li>
                <li>Sản phẩm dưỡng: Argan Oil, Coconut Oil, Macadamia Oil</li>
                <li>Sản phẩm dầu gội và xả</li>
            </ul>
        </p>

        <p>        
            - Scumbag là nhà phân phối chính thức của nhiều thương hiệu về tóc nổi tiếng trên thế giới:
            <ul>
                <li>Hanz de Fuko</li>
                <li>By Vilain</li>
                <li>Reuzel</li>
                <li>Lockhart's</li>
                <li>Odoud's</li>
                <li>Prospectors</li>
                <li>...</li>
            </ul>
        </p>
    </article>

    <aside>
        <h3>Liên kết nhanh</h3>
        <ul>
            <li><a id="A1" runat="server" href="~/">Home</a></li>
            <li><a id="A2" runat="server" href="~/About.aspx">About</a></li>
            <li><a id="A3" runat="server" href="~/Contact.aspx">Contact</a></li>
        </ul>
    </aside>
</asp:Content>