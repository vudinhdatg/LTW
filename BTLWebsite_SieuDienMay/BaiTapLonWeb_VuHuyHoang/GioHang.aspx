<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="BaiTapLonWeb_VuHuyHoang.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/GioHang.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="tong">
        <div class="nav">
        <div class="nav-link-a">
                    <a href="Trangchu.aspx">Trang chủ</a>>>giỏ hàng
                </div>
    </div>
    <div class="well well-small">
             <h1 class="well-small-text">Giỏ hàng của bạn<br> <small class="pull-right"> Sản phẩm </small></h1>

            
                <table class="table-giohang" border="1" >
                    <thead>
                        <tr class="hang1">
                            <th>Sản phẩm</th>
                            <th style="width:23%">Tên sản phẩm</th> 
                            <th>Thành tiền</th>
                            <th></th>
                        </tr>
                    </thead>
                    <div id="listCart" runat="server">

                    </div>
                </table>
               

                <br />
                <div class="well-quaytrang">
                    <a href="Sanpham.aspx" class="well-quaytrang-a">
                        <button type="button" class="well-quaytrang-btn">
                            <i class="fa-solid fa-arrow-left"></i>Tiếp tục xem sản phẩm
                        </button>
                    </a>
                    
                </div>
                <div class="well-thanhtoan">
                    <div class="thongtin">
                        <hr>
                        <h3 class="thongtin-text">THÔNG TIN THANH TOÁN</h3><br>
                        <input type="text" name="" id=""placeholder="Họ và tên" class="thongtinkhachhang"><br>
                        <input type="text" name="" id=""placeholder="Địa chỉ giao hàng" class="thongtinkhachhang"><br>
                        <input type="number" name="" id=""placeholder="Số điện thoại" class="thongtinkhachhang"><br>
                        <input type="email" name="" id=""placeholder="Email" class="thongtinkhachhang"><br>
                    </div>
                    <div class="donhang">
                        <h3>ĐƠN HÀNG CỦA BẠN</h3>
                        <div class="thanhtoan">
                            <h4 class="thanhtoan-tenSp">SẢN PHẨM</h4>
                            <p class="Tongtien">TỔNG</p>
                        </div>
                        <hr>
                        <div class="thanhtoan">
                            <p class="thanhtoan-tenSp">Tổng tiền</p>
                          
                            <p class="Tongtien" id="TongTien" Name="TongTien" runat="server"></p>
                        </div>
                        <hr>
                        <input type="radio" name="phuongthucthanhtoan" class="donhang-pttt">&nbsp;Chuyển khoản ngân hàng
                        
                        <p class="tttt">
                        Thực hiện thanh toán vào tài khoản
                        chúng tôi.Đơn hàng của bạn chuyển
                        sau khi chuyển tiền.</p>
                        
                        <input type="radio" name="phuongthucthanhtoan" class="donhang-pttt">&nbsp;Đưa tiền mặt
                
                        <p class="tttt">
                        Thanh toán trực tiếp khi hàng đã
                         được gửi đến địa chỉ<br> của khách hàng.</p>
                        <button>Thanh toán</button>

                    </div>
                </div>
                <div class="clear"></div>
                <div class="khoangcach"></div>
        </div>
    </div>
</asp:Content>
