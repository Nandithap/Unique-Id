using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class University_College : System.Web.UI.Page
{
    dbop ob = new dbop();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            string s = "select * from College";
            DataTable db = ob.ret(s);
            DataGrid1.DataSource = db;
            DataGrid1.DataBind();

        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Button2.Text == "Update")
        {
            string g = "update College set College_Name='" + txt_CN.Text + "',code='" + txt_code1.Text + "',place='" + txt_p.Text + "',p_o='" + txt_po.Text + "',dist='" + DropDownList2.Text + "',state='" + txt_st.Text + "',pin_code='" + txt_pin.Text + "',ph_no='" + txt_ph.Text + "',e_id='" + txt_ei.Text + "',w_add='" + txt_wa.Text + "' where Clg_id='" + Session["College"] + "'";
            ob.nonreturn(g);
        }
        else
        {
            string s = "select max(clg_id) from College";
            int cid = ob.maxid(s);
            string path = "~//clg_img//" + cid + ".jpg";



            string t = "insert into College values('" + cid + "','" + txt_CN.Text + "','" + txt_code1.Text + "','" + txt_p.Text + "','" + txt_po.Text + "','" + DropDownList2.Text + "','" + txt_st.Text + "','" + txt_pin.Text + "','" + txt_ph.Text + "','" + txt_ei.Text + "','" + txt_wa.Text + "','" + path + "')";
            ob.nonreturn(t);

            Random r = new Random(); 
            int ps = r.Next(0000, 9999);
            string jj = "insert into login values('" + txt_ei.Text + "','" + ps + "','college')";
            ob.nonreturn(jj);

        }
        Response.Write("<script>alert('Success');window.location='University_College.aspx'</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string s = "select max(Clg_id) from College";
        int cid = ob.maxid(s);
        FileUpload1.SaveAs(Server.MapPath("~//clg_img//" + cid + ".jpg"));
        Image1.ImageUrl = "~//clg_img//" + cid + ".jpg";


    }
    

    protected void DataGrid1_ItemCommand1(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            txt_CN.Text = e.Item.Cells[2].Text;
            txt_code1.Text = e.Item.Cells[3].Text;
            txt_ei.Text = e.Item.Cells[10].Text;
            txt_p.Text = e.Item.Cells[4].Text;
            txt_ph.Text = e.Item.Cells[9].Text;
            txt_pin.Text = e.Item.Cells[8].Text;
            txt_po.Text = e.Item.Cells[5].Text;
            txt_st.Text = e.Item.Cells[7].Text;
            txt_wa.Text = e.Item.Cells[11].Text;
            Image1.ImageUrl = e.Item.Cells[15].Text;
            Button2.Text = "Update";
            Session["College"] = e.Item.Cells[1].Text;
            MultiView1.SetActiveView(View2);
        }
        if (e.CommandName == "Delete")
        {
            string kl = "DELETE FROM College WHERE (Clg_id ='" + e.Item.Cells[1].Text + "')";
            ob.nonreturn(kl);
            Response.Write("<script>alert('Deleted');window.location='University_College.aspx'</script>");
        }
       
    }
}