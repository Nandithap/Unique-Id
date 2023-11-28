using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin : System.Web.UI.Page
{
    dbop ob=new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);

            string s1 = "select * from Course";
            DataTable db1 = ob.ret(s1);
            string s2 = "select * from Batch";
            DataTable db2 = ob.ret(s2);
            string s3 = "select * from College";
            DataTable db3 = ob.ret(s3);

            DropDownList5.DataSource = db1;
            DropDownList5.DataTextField = "c_name";
            DropDownList5.DataValueField = "c_id";
            DropDownList5.DataBind();


            DropDownList6.DataSource = db2;
            DropDownList6.DataTextField = "BatchName";
            DropDownList6.DataValueField = "Batch_id";
            DropDownList6.DataBind();

            DropDownList8.DataSource = db3;
            DropDownList8.DataTextField = "College_Name";
            DropDownList8.DataValueField = "Clg_id";
            DropDownList8.DataBind();

            string t = "SELECT Batch.BatchName, Course.c_name, student.*FROM  Batch INNER JOIN student ON Batch.Batch_id = student.Batch_id INNER JOIN Course ON student.c_id = Course.c_id where student. c_id='" + DropDownList5.SelectedValue + "' and student. Batch_id='" + DropDownList6.SelectedValue + "' and semester ='" + DropDownList9.Text + "'";
            DataTable db5 = ob.ret(t);
            DataGrid1.DataSource = db5;
            DataGrid1.DataBind();
            MultiView1.SetActiveView(View1);
        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        string t =" SELECT Batch.BatchName, Course.c_name, student.s_id, student.Reg_no, student.s_n, student.c_id, student.Batch_id, student.p_l, student.c_t, student.d_t, student.po, student.p_c, student.s_t, student.g_d, student.dob,  student.f_n, student.m_n, student.g_n, student.c_s, student.r_l, student.p_h, student.e_add, student.pic, student.college_id, student.semester, College.College_Name FROM Batch INNER JOIN student ON Batch.Batch_id = student.Batch_id INNER JOIN Course ON student.c_id = Course.c_id INNER JOIN College ON student.college_id = College.Clg_id where student.college_id='"+DropDownList8.SelectedValue+"' and student.c_id='"+DropDownList5.SelectedValue+"' and student.Batch_id='"+DropDownList6.SelectedValue+"' and Semester='"+DropDownList9.Text+"'";
        ob.ret(t);
        DataTable db5 = ob.ret(t);
        DataGrid1.DataSource = db5;
        DataGrid1.DataBind();

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "ViewMore")
        {
            Label1.Text = e.Item.Cells[1].Text;
            Label2.Text = e.Item.Cells[2].Text;
            Label3.Text = e.Item.Cells[3].Text;
            Label4.Text = e.Item.Cells[4].Text;
            Label5.Text = e.Item.Cells[5].Text;
            Label6.Text = e.Item.Cells[6].Text;
            Label7.Text = e.Item.Cells[7].Text;
            Label8.Text = e.Item.Cells[8].Text;
            Label9.Text = e.Item.Cells[9].Text;
            Label10.Text = e.Item.Cells[10].Text;
            Label11.Text = e.Item.Cells[11].Text;
            Label12.Text = e.Item.Cells[12].Text;
            Image1.ImageUrl = e.Item.Cells[21].Text;
            MultiView1.SetActiveView(View2);
        }
    }


}