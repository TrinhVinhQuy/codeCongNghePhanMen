using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_module_module_ShopNow : System.Web.UI.Page
{
    dbcsdlDataContext db = new dbcsdlDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var getPR = from pr in db.tbProducts
                    select new
                    {
                        pr.product_id,
                        pr.product_title,
                        pr.product_image,
                        pr.product_price_new,
                        pr.product_price,
                        pr.product_promotions,
                    };
        rpProduct.DataSource = getPR;
        rpProduct.DataBind();
    }
}