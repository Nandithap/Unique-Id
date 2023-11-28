using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class University_externalmark : System.Web.UI.Page
{
    dbop ob = new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View3);
            string s1 = "select Clg_id,College_Name from College ";
            DataTable db1 = ob.ret(s1);
            string s2 = "select c_id,c_name from Course";
            DataTable db2 = ob.ret(s2);
            string s3 = "select Sub_id,Sub_name from Subject";
            DataTable db3 = ob.ret(s3);
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}