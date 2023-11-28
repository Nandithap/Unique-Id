using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class University_Notification : System.Web.UI.Page
{
    dbop ob = new dbop();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            string s = "select * from Notificaton";
            DataTable db = ob.ret(s);
            DataGrid1.DataSource = db;
            DataGrid1.DataBind();

        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         MultiView1.SetActiveView(View2);
    }
protected void  Button2_Click(object sender, EventArgs e)
{
    string b = "select max(NotificationId) from Notificaton";
        int cid = ob.maxid(b);
        string date = DateTime.Now.ToShortDateString();

 
        string t = "insert into Notificaton values('"+cid+"','"+txt_ni.Text+"','"+date+"')";
        ob.nonreturn(t);
        Response.Write("<script>alert('Success');window.location='University_Notification.aspx'</script>");
       


}
protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
{

}
protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
{
    if (e.CommandName == "Delete")
    {
        string pt = "DELETE FROM Notificaton WHERE (NotificationId = '" + e.Item.Cells[0].Text + "')";
        ob.nonreturn(pt);
        Response.Write("<script>alert('Deleted');window.location='University_Notification.aspx'</script>");
       
    }
}
}