using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_ChiTietDonHang : System.Web.UI.Page
{
    dbcsdlDataContext db = new dbcsdlDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var getDonHang = from hdct in db.tbHoaDonBanHangChiTiets
                         join pr in db.tbProducts on hdct.product_id equals pr.product_id
                         where hdct.hoadon_id == Convert.ToInt32(RouteData.Values["id"])
                         select new
                         {
                             pr.product_image,
                             pr.product_title,
                             pr.product_price,
                         };
        rpChiTiet.DataSource = getDonHang;
        rpChiTiet.DataBind();
    }
}