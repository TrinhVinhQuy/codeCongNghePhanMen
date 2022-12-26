<%@ Page Title="" Language="C#" MasterPageFile="~/Web_MasterPage.master" AutoEventWireup="true" CodeFile="module_ThongTinKhachHang.aspx.cs" Inherits="web_module_module_ThongTinKhachHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="container">
        <div class="row">
            <div>
                <asp:Repeater runat="server" ID="rpKH">
                    <ItemTemplate>
                        <span><%#Eval("customer_fullname") %></span>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>--%><br />
    <div class="container">
        <div style="display: grid">
            <h1>Nguyễn Văn A</h1>
            <br />
            <a href="#">Lịch sử mua hàng</a>
            <a href="#">Lịch sử mua hàng</a>
            <a href="#">Lịch sử mua hàng</a>
            <a href="#">Lịch sử mua hàng</a>
        </div>
    </div>
</asp:Content>

