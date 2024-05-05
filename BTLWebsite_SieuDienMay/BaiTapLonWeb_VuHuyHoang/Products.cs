using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BaiTapLonWeb_VuHuyHoang
{
    public class Products
    {
        int id, gia;
        string tensp;
        string url_img;

        public int Id { get => id; set => id = value; }
        public int Gia { get => gia; set => gia = value; }
        public string Tensp { get => tensp; set => tensp = value; }
        public string Url_img { get => url_img; set => url_img = value; }
    }
}