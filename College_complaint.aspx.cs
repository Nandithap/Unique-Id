using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class College_complaint : System.Web.UI.Page
{
    dbop ob = new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            string a = "SELECT Complaint.Cm_id,Complaint.complaints,Complaint.Date,Complaint.Replay,Complaint.status FROM College INNER JOIN Complaint ON College.Clg_id = complaint.Clg_id";
            DataTable db = ob.ret(a);
            DataGrid2.DataSource = db;
            DataGrid2.DataBind();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string s = "select max(Cm_id) from Complaint";
        int cid = ob.maxid(s);
        string h = "insert into Complaint values('" + cid + "','" + txt_com.Text + "','" + DateTime.Now.ToShortDateString() + "','','" + Session["clgid"] .ToString()+ "','pending')";
        ob.nonreturn(h);

       Response.Write("<script>alert('Success');window.location='College_complaint.aspx'</script>");
       

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void DataGrid2_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if(e.CommandName=="Delete")
        {
            string kl = "DELETE FROM Complaint WHERE (Cm_id ='" + e.Item.Cells[0].Text + "')";
            ob.nonreturn(kl);
            Response.Write("<script>alert('Deleted');window.location='College_complaint.aspx'</script>");
        }
    }
}