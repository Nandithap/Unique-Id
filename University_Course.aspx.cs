using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class University_Course : System.Web.UI.Page
{



    dbop ob = new dbop();


    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            string s = "select * from Course";
            DataTable db = ob.ret(s);
            DataGrid1.DataSource = db;
            DataGrid1.DataBind();







        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Button2.Text == "Update")
        {
            string th = "update Course set c_code='" + txt_code.Text + "',c_name='" + txt_name.Text + "' where c_id='"+Session["course"]+"'";
            ob.nonreturn(th);
        }
        else
        {
            string s = "select max(c_id) from Course";
            int cid = ob.maxid(s);

            string q = "insert into Course values('" + cid + "','" + txt_code.Text + "','" + txt_name.Text + "')";
            ob.nonreturn(q);
        }
        Response.Write("<script>alert('Success');window.location='University_Course.aspx'</script>");
        

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string t = "DELETE FROM Course";
        ob.nonreturn(t);
        Response.Write("<script>alert('DeleteAll');window.location='University_Course.aspx'</script>");
        

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        foreach (DataGridItem dr in DataGrid1.Items)
        {
            CheckBox ch = (CheckBox)dr.FindControl("CheckBox1");
            if (ch.Checked == true)
            {
                string d = "delete from Course where c_id='" + dr.Cells[1].Text + "'";
                ob.nonreturn(d);
               
            }
        }
        Response.Write("<script>alert('Deleted');window.location='University_Course.aspx'</script>");

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            txt_code.Text = e.Item.Cells[2].Text;
            txt_name.Text = e.Item.Cells[3].Text;
            Button2.Text = "Update";
            Session["course"] = e.Item.Cells[1].Text;
            MultiView1.SetActiveView(View2);
            
        }   
            
    }
}