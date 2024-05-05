<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="BaiTapLonWeb_VuHuyHoang.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/SanPham.css" rel="stylesheet" />
    <link href="Css/CssMaster.css" rel="stylesheet" />
    <link href="Css/TrangChu.css" rel="stylesheet" />
    <link href="Css/responsive.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div id="Sanpham">
    <div id="T_moi">
      <div id="s_head" style="text-align: center;font-size: 28px;">Sản phẩm của Shop</div>
      <div class="big">
        <div class="cot1">
          <a class="dong1" href="ChiTietSP.aspx">
            <div class="cottrai1"><i class="fa-regular fa-air-conditioner"></i></div>
            <div class="cotphai1">ĐIều hòa </div>
          </a>
         
          <a class="dong1" href="ChiTietSP.aspx">
            <div class="cottrai1"><i class="fa-duotone fa-refrigerator"></i></div>
            <div class="cotphai1">Tủ Lạnh </div>
          </a>
          <a class="dong1" href="ChiTietSP.aspx">
            <div class="cottrai1"><i class="fa-solid fa-laptop-code"></i></div>
            <div class="cotphai1">Máy tính-Laptop </div>
          </a>
          <a class="dong1" href="ChiTietSP.aspx">
            <div class="cottrai1"><i class="fa-solid fa-tv"></i></div>
            <div class="cotphai1">Tivi</div>
          </a>
          <a class="dong1" href="ChiTietSP.aspx">
            <div class="cottrai1"><i class="fa-regular fa-washing-machine"></i></div>
            <div class="cotphai1">Máy giặt </div>
          </a>
        </div>

        <ul class="list_moi" id="listSP" name="listSP" runat="server">
          
        </ul>
        </div>
    </div>
</div>
</asp:Content>
