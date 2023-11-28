using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class University_Callocation : System.Web.UI.Page
{
    dbop ob = new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView2.SetActiveView(View2);
            string d = "select Clg_id,College_Name from College";
            DataTable db3 = ob.ret(d);
            DropDownList1.DataSource = db3;
            DropDownList1.DataTextField = "College_Name";
            DropDownList1.DataValueField = "Clg_id";
            DropDownList1.DataBind();
            DropDownList3.DataSource = db3;
            DropDownList3.DataTextField = "College_Name";
            DropDownList3.DataValueField = "Clg_id";
            DropDownList3.DataBind();

            string w = "select c_id,c_name from Course";
            DataTable db4 = ob.ret(w);
            DropDownList2.DataSource = db4;
            DropDownList2.DataTextField = "c_name";
            DropDownList2.DataValueField = "c_id";
            DropDownList2.DataBind();



            string ss = "SELECT Course.c_name, College.College_Name, CourseAllocation.Al_id FROM College INNER JOIN CourseAllocation ON College.Clg_id = CourseAllocation.Clg_id INNER JOIN Course ON CourseAllocation.c_id = Course.c_id";
            DataTable db = ob.ret(ss);
            DataGrid1.DataSource = db;
            DataGrid1.DataBind();

        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = "select max(Al_id) from CourseAllocation";
        int sid = ob.maxid(a);

        string t = "insert into CourseAllocation values('" + sid + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "')";
        ob.nonreturn(t);
        Response.Write("<script>alert('Success');window.location='University_Callocation.aspx'</script>");

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView2.SetActiveView(View1);
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ss = "SELECT Course.c_name, College.College_Name, CourseAllocation.Al_id FROM College INNER JOIN CourseAllocation ON College.Clg_id = CourseAllocation.Clg_id INNER JOIN Course ON CourseAllocation.c_id = Course.c_id where CourseAllocation.Clg_id='"+DropDownList3.Text+"'";
        DataTable db = ob.ret(ss);
        DataGrid1.DataSource = db;
        DataGrid1.DataBind();
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "DELETE")
        {
            string st = "DELETE FROM CourseAllocation WHERE (Al_id = '" + e.Item.Cells[0].Text + "')";
            ob.nonreturn(st);
            Response.Write("<script>alert('Deleted');window.location='University_Callocation.aspx'</script>");
        }
    }
}