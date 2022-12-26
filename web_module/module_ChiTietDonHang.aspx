<%@ Page Title="" Language="C#" MasterPageFile="~/Web_MasterPage.master" AutoEventWireup="true" CodeFile="module_ChiTietDonHang.aspx.cs" Inherits="web_module_module_ChiTietDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="products" id="products">

        <h1 class="heading">Lịch sử đơn hàng</h1>

        <div class="box-container">
            <asp:Repeater runat="server" ID="rpChiTiet">
                <ItemTemplate>
                    <div class="box" data-item="featured">
                        <div class="image">
                            <img src="<%#Eval("product_image") %>" alt="">
                        </div>
                        <div class="content">
                            <h3><%#Eval("product_title") %></h3>
                            <div class="price">
                                <div class="amount"><%#Eval("product_price") %></div>
                                <%--<div class="cut"><%#Eval("product_price_new") %></div>
                                <div class="offer"><%#Eval("product_promotions") %>% off</div>--%>
                            </div>
                            <%--<div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <span>(50)</span>
                            </div>--%>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </section>
</asp:Content>

