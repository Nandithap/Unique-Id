using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class University_viewstudent : System.Web.UI.Page
{
    dbop ob = new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

            string s1 = "select * from Course";
            DataTable db1 = ob.ret(s1);
            string s2 = "select * from Batch";
            DataTable db2 = ob.ret(s2);
            string s3 = "select * from College";
            DataTable db3 = ob.ret(s3);

            DropDownList1.DataSource = db1;
            DropDownList1.DataTextField = "c_name";
            DropDownList1.DataValueField = "c_id";
            DropDownList1.DataBind();


            DropDownList3.DataSource = db2;
            DropDownList3.DataTextField = "BatchName";
            DropDownList3.DataValueField = "Batch_id";
            DropDownList3.DataBind();

            DropDownList2.DataSource = db3;
            DropDownList2.DataTextField = "College_Name";
            DropDownList2.DataValueField = "Clg_id";
            DropDownList2.DataBind();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string t = "SELECT Batch.BatchName, Course.c_name, student.*FROM  Batch INNER JOIN student ON Batch.Batch_id = student.Batch_id INNER JOIN Course ON student.c_id = Course.c_id where student.c_id='" + DropDownList1.SelectedValue + "'and student.Batch_id='" + DropDownList3.Text + "'and student.semester='" + DropDownList4.Text + "'";
        DataTable db5 = ob.ret(t);
        DataGrid1.DataSource = db5;
        DataGrid1.DataBind();

    }
   
}