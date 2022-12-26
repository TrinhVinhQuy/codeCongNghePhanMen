using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_ThongTinKhachHang : System.Web.UI.Page
{
    dbcsdlDataContext db = new dbcsdlDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var getKhachHang = from kh in db.tbCustomerAccounts
                           where kh.customer_user == Request.Cookies["UserNameWeb"].Value
                           select new
                           {
                               kh.customer_fullname,
                           };
        //rpKH.DataSource = getKhachHang;
        //rpKH.DataBind();
        //Request.Cookies["userName"].Value
    }
}