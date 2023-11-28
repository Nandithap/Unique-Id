using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class University_Batch : System.Web.UI.Page
{
    dbop ob = new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView2.SetActiveView(View2);
            string a1 = "select c_id,c_name from Course";
            DataTable db1 = ob.ret(a1);
        
            DropDownList1.DataSource = db1;
            DropDownList1.DataTextField = "c_name";
            DropDownList1.DataValueField = "c_id";
            DropDownList1.DataBind();

         



            DropDownList2.DataSource = db1;
            DropDownList2.DataTextField = "c_name";
            DropDownList2.DataValueField = "c_id";
            DropDownList2.DataBind();

           





             string a2 = "  SELECT  Batch.Batch_id, Course.c_name, Batch.BatchName FROM Batch INNER JOIN Course ON Batch.course_id = Course.c_id";
             DataTable db2 = ob.ret(a2);
             DataGrid1.DataSource = db2;
             DataGrid1.DataBind();

    }
        
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Update")
        {
            string t = "UPDATE Batch SET   course_id='" + DropDownList1.Text + "',BatchName='" + txt_bn.Text + "' WHERE Batch_id ='" + Session["Batch"].ToString() + "'";
            ob.nonreturn(t);
        }
        else
        {
            string a = "select max(Batch_id) from Batch";
            int sid = ob.maxid(a);


            string t = "insert into Batch values('" + sid + "','" + DropDownList1.Text + "','" + txt_bn.Text + "')";
            ob.nonreturn(t);
        }


        Response.Write("<script>alert('Success');window.location='University_Batch.aspx'</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView2.SetActiveView(View1);
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if(e.CommandName=="Edit")
        {
          txt_bn.Text=e.Item.Cells[2].Text;
          DropDownList1.SelectedItem.Text=e.Item.Cells[1].Text;
          Button1.Text = "Update";
          Session["Batch"] = e.Item.Cells[0].Text;
          MultiView2.SetActiveView(View1);
        }
        if(e.CommandName=="Delete")
        {
            string b="DELETE FROM Batch WHERE Batch_id ='"+e.Item.Cells[0].Text+"'";
            ob.nonreturn(b);
            Response.Write("<script>alert('Deleted');window.location='University_Batch.aspx'</script>");
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        string a2 = "  SELECT  Batch.Batch_id, Course.c_name, Batch.BatchName FROM Batch INNER JOIN Course ON Batch.course_id = Course.c_id where Course.c_id='"+DropDownList2.SelectedValue.ToString()+"'";
        DataTable db2 = ob.ret(a2);
        DataGrid1.DataSource = db2;
        DataGrid1.DataBind();
    }
} 
