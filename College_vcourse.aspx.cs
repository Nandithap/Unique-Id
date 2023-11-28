using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class College_vcourse : System.Web.UI.Page
{
    dbop ob = new dbop();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string d = "SELECT Course.c_id ,Course.c_code, Course.c_name FROM Course INNER JOIN CourseAllocation ON Course.c_id = CourseAllocation.c_id where Clg_id='" + Session["clgid"].ToString() + "'";
            DataTable db = ob.ret(d);
            DataGrid1.DataSource = db;
            DataGrid1.DataBind();


        }
    }
}
  