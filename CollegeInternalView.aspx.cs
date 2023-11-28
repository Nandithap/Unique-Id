﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CollegeInternalView : System.Web.UI.Page
{
    dbop ob = new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            string s1 = "select * from Course";
            DataTable db1 = ob.ret(s1);
            string s2 = "select * from Batch";
            DataTable db2 = ob.ret(s2);

            DropDownList1.DataSource = db1;
            DropDownList1.DataTextField = "c_name";
            DropDownList1.DataValueField = "c_id";
            DropDownList1.DataBind();


            DropDownList2.DataSource = db2;
            DropDownList2.DataTextField = "BatchName";
            DropDownList2.DataValueField = "Batch_id";
            DropDownList2.DataBind();

            string s3 = "select * from Course";
            DataTable db3 = ob.ret(s3);
            string s4 = "select * from Batch";
            DataTable db4 = ob.ret(s4);

            DropDownList1.DataSource = db3;
            DropDownList1.DataTextField = "c_name";
            DropDownList1.DataValueField = "c_id";
            DropDownList1.DataBind();


            DropDownList2.DataSource = db4;
            DropDownList2.DataTextField = "BatchName";
            DropDownList2.DataValueField = "Batch_id";
            DropDownList2.DataBind();


        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string t = "SELECT Batch.BatchName, Course.c_name, student.*FROM  Batch INNER JOIN student ON Batch.Batch_id = student.Batch_id INNER JOIN Course ON student.c_id = Course.c_id where student.c_id='" + DropDownList1.SelectedValue + "'and student.Batch_id='" + DropDownList2.Text + "'and student.semester='" + DropDownList3.Text + "'";
        DataTable db5 = ob.ret(t);
        DataGrid1.DataSource = db5;
        DataGrid1.DataBind();

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        string y = "SELECT InternalMark.*,Subject.sub_code,Subject.sub_name FROM InternalMark INNER JOIN Subject ON InternalMark.sub_id = Subject.Sub_id where student_id='" + e.Item.Cells[1].Text + "'and InternalMark.sem ='" + DropDownList3.Text + "'";
        DataTable db6 = ob.ret(y);
        DataGrid2.DataSource = db6;
        DataGrid2.DataBind();
        MultiView1.SetActiveView(View2);
    }
}