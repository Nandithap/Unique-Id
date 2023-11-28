using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for dbop
/// </summary>
public class dbop
{
	public dbop()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\inetpub\wwwroot\Unique Id\App_Data\UniqueId.mdf;Integrated Security=True;User Instance=True");

    //nonret-insert,delete,update


    public void nonreturn(string q)
    {

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = q;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
    //return select

    public DataTable ret(string q)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = q;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;

    }
    //auto generate
    public int maxid(string q)
    {


        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = q;
        con.Open();
        int id = 0;
        try
        {
            id = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
        }
        catch
        {
            id = 1;
        }
        con.Close();
        return id;


    }










}