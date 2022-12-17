<%@ Page Title="" Language="C#" MasterPageFile="~/Web_MasterPage.master" AutoEventWireup="true" CodeFile="module_ShopNow.aspx.cs" Inherits="web_module_module_ShopNow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../js/bootstrap.min.js"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <section class="products" id="products">

        <h1 class="heading">exclusive <span>products</span> </h1>

        <div class="filter-buttons">
            <div class="buttons active" data-filter="all">all</div>
            <div class="buttons" data-filter="arrivals">new arrivals</div>
            <div class="buttons" data-filter="featured">featured</div>
            <div class="buttons" data-filter="special">special offer</div>
            <div class="buttons" data-filter="seller">best seller</div>
        </div>

        <div class="box-container">
            <asp:Repeater runat="server" ID="rpProduct">
                <ItemTemplate>
                    <div class="box" data-item="featured">
                        <div class="icons">
                            <a href="#" class="fas fa-shopping-cart"></a>

                        </div>
                        <div class="image">
                            <img src="<%#Eval("product_image") %>" alt="">
                        </div>
                        <div class="content">
                            <h3><%#Eval("product_title") %></h3>
                            <div class="price">
                                <div class="amount"><%#Eval("product_price") %></div>
                                <div class="cut"><%#Eval("product_price_new") %></div>
                                <div class="offer"><%#Eval("product_promotions") %>% off</div>
                            </div>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <span>(50)</span>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

    </section>
</asp:Content>

