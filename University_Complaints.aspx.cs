using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class University_Complaints : System.Web.UI.Page
{
    dbop ob = new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            string a = "SELECT Complaint.*, College.College_Name FROM College INNER JOIN Complaint ON College.Clg_id = Complaint.Clg_id";
            DataTable db = ob.ret(a);
            DataGrid1.DataSource = db;
            DataGrid1.DataBind();
        }
    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string b = "update Complaint set Replay='" + txt_rp.Text + "',status='Replied' where Cm_id='" + Session["cid"] + "'";
        ob.nonreturn(b);
        Response.Write("<script>alert('Success');window.location='University_Complaints.aspx'</script>");

    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {


        if (e.CommandName == "Send Replay")
        {
            MultiView1.SetActiveView(View2);
            txt_com.Text = e.Item.Cells[2].Text;
            txt_rp.Text = e.Item.Cells[4].Text;
            Session["cid"] = e.Item.Cells[0].Text;
        }
    }
}