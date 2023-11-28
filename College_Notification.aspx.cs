using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class College_Notification : System.Web.UI.Page
{
    dbop ob = new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            
            string s = "select * from Notificaton";
            DataTable db = ob.ret(s);
            DataGrid1.DataSource = db;
            DataGrid1.DataBind();

        }


    }
}