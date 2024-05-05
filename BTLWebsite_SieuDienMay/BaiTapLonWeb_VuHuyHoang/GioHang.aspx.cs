using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapLonWeb_VuHuyHoang
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<DsSanPham> idcarts = new List<DsSanPham>();

            idcarts = (List<DsSanPham>)Session["DsSanPham"];

            string path = "listProduct.xml";

            List<Products> list = new List<Products>();

            if (File.Exists(Server.MapPath(path)))
            {
                // Đọc file
                System.Xml.Serialization.XmlSerializer reader = new System.Xml.Serialization.XmlSerializer(typeof(List<Products>));
                StreamReader file = new StreamReader(Server.MapPath(path));

                list = (List<Products>)reader.Deserialize(file);
                list = list.OrderByDescending(Product => Product.Id).ToList();
                file.Close();
            }


            string html = "";
            int i = 0;
            foreach (DsSanPham cart in idcarts)
            {
                i++;
                if ((string)Convert.ToString(Session["id"]) == cart.IdMb)
                {
                    Products find_Product = list.Find(item => item.Id == cart.IdProd && cart.IdMb == Convert.ToString(Session["id"]));


                    if (find_Product != null)
                    {
                        html += "<tr>";
                        html += "<th>" + "<img src = \"" + find_Product.Url_img + "\" width=\"50%\" height=\"50%\" alt = \"\" >" + "</th>";
                        html += "<th>" + find_Product.Tensp + "</th>";
                        html += "<th>" + find_Product.Gia + "</th>";
                        html += "<th><button class='btn btn-basic' type='submit' value='" + find_Product.Id + "' id='btnXoa' name='btnXoa' runat='server'>" +
                                                "<i class='fa fa-trash' aria-hidden='true'></i> Xóa" +
                                            "</button></th>";
                        html += "</tr>";

                    }
                }
                listCart.InnerHtml = html;
            }


            if (Request.Form["btnXoa"] != null)
            {
                idcarts = (List<DsSanPham>)Session["DsSanPham"];
                var itemToRemove = idcarts.SingleOrDefault(pro => pro.IdProd == Convert.ToInt32(Request.Form["btnXoa"]));
                if (itemToRemove != null)
                    idcarts.Remove(itemToRemove);
                Session["DsSanPham"] = idcarts;
                Response.Redirect("GioHang.aspx");
            }
            int tong = 0;
            foreach (DsSanPham cart in idcarts)
            {
                i++;
                if ((string)Convert.ToString(Session["id"]) == cart.IdMb)
                {
                    Products find_Product = list.Find(item => item.Id == cart.IdProd && cart.IdMb == Convert.ToString(Session["id"]));


                    if (find_Product != null)
                    {
                        tong += find_Product.Gia;
                    }
                }
            }
            TongTien.InnerHtml = "<b>" + tong + "</b>";
        }
    }
}
