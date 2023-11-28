using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class College_semupdation : System.Web.UI.Page
{
    dbop ob = new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
           
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbop db = new dbop();
        string a = "select * from student";
            DataTable db1 = ob.ret(a);
            foreach (DataRow dr in db1.Rows)
            {
                string id = dr[0].ToString();
                int sem =Convert.ToInt32(dr[22]) + 1;
                if (sem == 6)
                {
                    string up = "update student set semester ='Completed' where s_id='" + id + "'";
                    db.nonreturn(up);
                
                
                }
                else
                {
                    string up = "update student set semester ='" + sem + "' where s_id='" + id + "'";
                    db.nonreturn(up);
                }
            }
         Response.Write("<script>alert('Success');window.location='College_semupdation.aspx'</script>");
            

    }
}