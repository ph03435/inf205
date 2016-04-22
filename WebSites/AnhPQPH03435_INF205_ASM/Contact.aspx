<%@ Page Title="Liên hệ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h2></h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Số điện thoại:</h3>
        </header>
        <p>
            <span class="label">Di động:</span>
            <span>098.211.1990</span>
        </p>
        <p>
            <span class="label">Máy bàn:</span>
            <span>043.553.2555</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Giải đáp về hàng hóa:</span>
            <span><a href="mailto:anhpqph03435@fpt.edu.vn">anhpqph03435@fpt.edu.vn</a></span>
        </p>
        <p>
            <span class="label">Tư vấn đại lý:</span>
            <span><a href="mailto:quanganh1202@gmail.com">quanganh1202@gmail.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
            Số 18 Khu D7 Thanh Xuân Bắc<br />
            Quận Thanh Xuân<br />
            Hà Nội
        </p>
    </section>
    <section class="contact">
        <header>
            <h3>Bản đồ:</h3>
        </header>
        <p style="text-align:center">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.4771679840453!2d105.79765865817176!3d20.99446750065612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjDCsDU5JzQwLjEiTiAxMDXCsDQ3JzU1LjUiRQ!5e0!3m2!1sen!2s!4v1460816851977" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </p>
    </section>

</asp:Content>