using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using Microsoft.Azure.CognitiveServices.Vision.Face;
using QRCoder;
using System.Drawing;



public partial class College_studentsmg : System.Web.UI.Page
{
    dbop ob = new dbop();
    int sid = 0;
    protected void Page_Load(object sender, EventArgs e)
    { 
       if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);

            string s1s = "select * from Course";
            DataTable db1 = ob.ret(s1s);
            string s2 = "select * from Batch";
            DataTable db2 = ob.ret(s2);

            DropDownList1.DataSource = db1;
            DropDownList1.DataTextField = "c_name";
            DropDownList1.DataValueField = "c_id";
            DropDownList1.DataBind();


            DropDownList3.DataSource = db2;
            DropDownList3.DataTextField = "BatchName";
            DropDownList3.DataValueField = "Batch_id";
            DropDownList3.DataBind();

            string s3 = "select * from Course";
            DataTable db3 = ob.ret(s3);
            string s4 = "select * from Batch";
            DataTable db4 = ob.ret(s4);

            DropDownList5.DataSource = db3;
            DropDownList5.DataTextField = "c_name";
            DropDownList5.DataValueField = "c_id";
            DropDownList5.DataBind();


            DropDownList6.DataSource = db4;
            DropDownList6.DataTextField = "BatchName";
            DropDownList6.DataValueField = "Batch_id";
            DropDownList6.DataBind();

            string t = "SELECT Batch.BatchName, Course.c_name, student.*FROM  Batch INNER JOIN student ON Batch.Batch_id = student.Batch_id INNER JOIN Course ON student.c_id = Course.c_id";
            DataTable db5 = ob.ret(t);
            DataGrid1.DataSource = db5;
            DataGrid1.DataBind();



            string s1 = "select max(s_id) from student";
            sid = ob.maxid(s1);
            Session["sid"] = sid.ToString();

        }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Button2.Text == "Update")
        {
            string s = "update student set Reg_no='" + txt_rg.Text + "',s_n='" + txt_sn.Text + "',c_id='" + DropDownList1.Text + "',Batch_id='" + DropDownList3.Text + "',p_l='" + txt_pl.Text + "',c_t='" + txt_ct.Text + "',d_t='" + DropDownList4.Text + "',po='" + txt_po.Text + "',p_c='" + txt_pc.Text + "',s_t='" + txt_st.Text + "',dob='" + txt_dob.Text + "',f_n='" + txt_fn.Text + "',m_n='" + txt_mn.Text + "',g_n='" + txt_gn.Text + "',c_s='" + txt_cs.Text + "',r_l='" + txt_r.Text + "',p_h='" + txt_ph.Text + "',e_add='" + txt_ea.Text + "',pic='"+Session["img"]+"'where s_id='" + Session["student"] + "'";
            ob.nonreturn(s);
             Response.Write("<script>alert('updated');window.location='College_studentsmg.aspx'</script>");

        }
        else
        {
          
          



         
            string dob = this.Page.Request.Form["dob"];
            string gender = "";
            if (Male.Checked == true)
            {
                gender = Male.Text;
            }
            else
            {
                gender = Female.Text;
            }



            string ss = "insert into student values('" + Session["sid"] + "','" + txt_rg.Text + "','" + txt_sn.Text + "','" + DropDownList1.Text + "','" + DropDownList3.Text + "','" + txt_pl.Text + "','" + txt_ct.Text + "','" + DropDownList4.Text + "','" + txt_po.Text + "','" + txt_pc.Text + "','" + txt_st.Text + "','" + gender + "','" + txt_dob.Text + "','" + txt_fn.Text + "','" + txt_mn.Text + "','" + txt_gn.Text + "','" + txt_cs.Text + "','" + txt_r.Text + "','" + txt_ph.Text + "','" + txt_ea.Text + "','" + Session["img"] + "','" + Session["clgid"] + "','1','" + Session["fac_id"] + "')";
            ob.nonreturn(ss);
            Response.Write("<script>alert('Success');window.location='College_studentsmg.aspx'</script>");
        }

    }
    string fac_id = "";
    protected void Button1_Click(object sender, EventArgs e)
    {
        String sid = "" + DateTime.Now.ToFileTime();
        FileUpload2.SaveAs(Server.MapPath("~//std_img//" + sid + ".jpg"));
        Session["img"] = "~//std_img//" + sid + ".jpg";
        Image1.ImageUrl = "~//std_img//" + sid + ".jpg";
        string path  = "~//std_img//" + sid + ".jpg";



     
        recon rc = new recon();
        fac_id = rc.MakeRequest1(Image1.ImageUrl.ToString(), Context);
        Session["fac_id"] = fac_id;



        QRCodeGenerator qrGenerator = new QRCodeGenerator();
        QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(fac_id, QRCodeGenerator.ECCLevel.Q);
        System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
        imgBarCode.Height = 150;
        imgBarCode.Width = 150;
        using (Bitmap bitMap = qrCode.GetGraphic(20))
        {
            using (MemoryStream ms = new MemoryStream())
            {
                bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                byte[] byteImage = ms.ToArray();
                bitMap.Save(Server.MapPath("~//qr//" + sid + ".bmp"));
                Session["qrpath"] = "~//qr//" + sid + ".bmp";

               // image_qr.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
            }
        }

        
        












    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            txt_rg.Text = e.Item.Cells[1].Text;
            txt_sn.Text = e.Item.Cells[2].Text;
            txt_pl.Text = e.Item.Cells[5].Text;
            txt_ct.Text = e.Item.Cells[6].Text;
            txt_po.Text = e.Item.Cells[8].Text;
            txt_pc.Text = e.Item.Cells[9].Text;
            txt_st.Text = e.Item.Cells[10].Text;
            txt_dob.Text = e.Item.Cells[12].Text;
            txt_fn.Text = e.Item.Cells[13].Text;
            txt_mn.Text = e.Item.Cells[14].Text;
            txt_gn.Text = e.Item.Cells[15].Text;
            txt_cs.Text = e.Item.Cells[16].Text;
            txt_r.Text = e.Item.Cells[17].Text;
            txt_ph.Text = e.Item.Cells[18].Text;
            txt_ea.Text = e.Item.Cells[19].Text;

            Image1.ImageUrl = e.Item.Cells[20].Text;
            Button2.Text = "Update";
            Session["student"] = e.Item.Cells[0].Text;
            MultiView1.SetActiveView(View2);

        }
            if (e.CommandName == "Delete")
            {
                string s = "DELETE FROM student WHERE s_id = '" + e.Item.Cells[0].Text + "'";
                ob.nonreturn(s);
                Response.Write("<script>alert('Deleted');window.location='College_studentsmg.aspx'</script>");
            }

               
        }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string t = "SELECT Batch.BatchName, Course.c_name, student.*FROM  Batch INNER JOIN student ON Batch.Batch_id = student.Batch_id INNER JOIN Course ON student.c_id = Course.c_id where student. c_id='" + DropDownList5.SelectedValue + "' and student. Batch_id='" + DropDownList6.SelectedValue+ "' and student.semester ='" + DropDownList7.Text + "'";
        DataTable db5 = ob.ret(t);
        DataGrid1.DataSource = db5;
        DataGrid1.DataBind();


    }
}
