using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for cls_News
/// </summary>
public class cls_Slide
{
    dbcsdlDataContext db = new dbcsdlDataContext();
    public cls_Slide()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Linq_Them(string image)
    {

        tbSlide insert = new tbSlide();
        insert.slide_image = image;
        insert.hidden = false;
        db.tbSlides.InsertOnSubmit(insert);
        try
        {

            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
    public bool Linq_Sua(int slide_id, string image)
    {
        tbSlide update = db.tbSlides.Where(x => x.slide_id == slide_id).FirstOrDefault();
            update.slide_image = image;
        try
        {
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
    public bool Linq_Xoa(int slide_id)
    {
        tbSlide delete = db.tbSlides.Where(x => x.slide_id == slide_id).FirstOrDefault();
        delete.hidden = true;
        try
        {
            db.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }
}