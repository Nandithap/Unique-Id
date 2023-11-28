using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class University_Subject : System.Web.UI.Page
{
    dbop ob = new dbop();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            string a = "SELECT  Subject.*, Course.c_name FROM   Course INNER JOIN Subject ON Course.c_id = Subject.c_id";
            DataTable db = ob.ret(a);
            DataGrid1.DataSource = db;
            DataGrid1.DataBind();

            string a1 = "select c_id,c_name from Course";
            DataTable db1 = ob.ret(a1);
            drcourse.DataSource = db1;
            drcourse.DataTextField = "c_name";
            drcourse.DataValueField = "c_id";
            drcourse.DataBind();

            drcourse.Items.Insert(0, new ListItem("Select", "-1"));
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Button2.Text == "Update")
        {
            string mn = "update Subject set c_id='" + drcourse.SelectedValue.ToString() + "', Sub_code='" + txt_sc.Text + "',Sub_name='" + txt_sn.Text + "',Sem='" + DropDownList2.Text + "' where Sub_id='" + Session["Subject"] + "'";
            ob.nonreturn(mn);
        }
        else
        {

            string a = "select max(Sub_id) from Subject";
            int sid = ob.maxid(a);




            string t = "insert into Subject values('" + sid + "','" + drcourse.SelectedValue + "','" + txt_sc.Text + "','" + txt_sn.Text + "','" + DropDownList2.Text + "')";
            ob.nonreturn(t);
        }

        Response.Write("<script>alert('Success');window.location='University_Subject.aspx'</script>");
    }

   
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            string gt = "DELETE FROM Subject WHERE (Sub_id ='" + e.Item.Cells[0].Text + "')";
            ob.nonreturn(gt);
            Response.Write("<script>alert('Deleted');window.location='University_Subject.aspx'</script>");
        }
        if (e.CommandName == "Edit")
        {
            txt_sc.Text = e.Item.Cells[3].Text;
            txt_sn.Text = e.Item.Cells[4].Text;
            Button2.Text = "Update";
            Session["Subject"] = e.Item.Cells[0].Text;
            MultiView1.SetActiveView(View2);
        }
    }
}