﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="BaiTapLonWeb_VuHuyHoang.TrangChuaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Css/TrangChu.css" />
    
    <script>
        function hideImage(li) {
            var image = li.querySelector('img');
            if (image) {
                image.style.display = 'none';
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner">
        <img class="img-responsive" src="img/banner.jpg">
    </div>
    <div id="T_moi">
                <p id="SpMoi">Sản phẩm mới</p><hr />
                <ul class="list_moi" id="listSPmoi" name="listSPmoi" runat="server">
                    
                </ul>
            </div>
      <div id="T_moi">
              <p id="SpMoi">Sản phẩm bán chạy</p><hr />
               <ul class="list_moi" id="ListSale" Name="ListSale" runat="server">
               </ul>
      </div>
 
</asp:Content>
<%--  --%>