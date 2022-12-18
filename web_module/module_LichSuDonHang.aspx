<%@ Page Title="" Language="C#" MasterPageFile="~/Web_MasterPage.master" AutoEventWireup="true" CodeFile="module_LichSuDonHang.aspx.cs" Inherits="web_module_module_LichSuDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="box-container">
        <h3>Lịch sử mua</h3>
        <table>
            <tr>
                <th>Ngày mua</th>
                <th>Thành Tiền</th>
                <th>Chi Tiết</th>
            </tr>
            <asp:Repeater runat="server" ID="rpMua">
                <ItemTemplate>
                    <tr>
                        <th><%#Convert.ToDateTime(Eval("hoadon_createdate")).ToShortDateString() %></th>
                        <th><%#Eval("hoadon_tongtien") %></th>
                        <th><a href="#">Chi Tiết</a></th>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
    <div class="box-container">
        <h3>Lịch sử huỷ</h3>
        <table>
            <tr>
                <th>Ngày mua</th>
                <th>Thành Tiền</th>
                <th>Chi Tiết</th>
            </tr>
            <asp:Repeater runat="server" ID="rpHuy">
                <ItemTemplate>
                    <tr>
                        <th><%#Convert.ToDateTime(Eval("hoadon_createdate")).ToShortDateString() %></th>
                        <th><%#Eval("hoadon_tongtien") %></th>
                        <th><a href="#">Chi Tiết</a></th>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</asp:Content>

