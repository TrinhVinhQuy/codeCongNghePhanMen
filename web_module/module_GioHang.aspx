<%@ Page Title="" Language="C#" MasterPageFile="~/Web_MasterPage.master" AutoEventWireup="true" CodeFile="module_GioHang.aspx.cs" Inherits="web_module_module_GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="products" id="products">

        <h1 class="heading">Giỏ hàng </h1>

        <div class="box-container">
            <asp:Repeater runat="server" ID="rpGioHang">
                <ItemTemplate>
                    <div class="box" data-item="featured">
                        <div class="image">
                            <img src="<%#Eval("product_image") %>" alt="">
                        </div>
                        <%--<div class="content">
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
                        </div>--%>
                        <input type="text" hidden="hidden" id="txtHD_an" name="name" value="<%#Eval("hoadon_id") %>" />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div style="display: none">
            <input type="text" runat="server" id="txtHD" name="name" value="" />
        </div>
    </section>
    <script>
        document.getElementById("<%=txtHD.ClientID%>").value = document.getElementById("txtHD_an").value;
    </script>
    <input type="text" runat="server" id="txtTien" class="btn" name="name" value="" />
    <a href="#" runat="server" id="btnMua" class="btn" onserverclick="btnMua_ServerClick">Mua</a>
    <a href="#" runat="server" id="btnHuyMua" class="btn" onserverclick="btnHuyMua_ServerClick">Huỷ Mua</a>
</asp:Content>

