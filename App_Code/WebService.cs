using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.IO;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }


    dbop c1 = new dbop();
    [WebMethod]
    public string uu(string path)
    {
        try
        {
            string pp = "";
            byte[] bytes = Convert.FromBase64String(path);

            String msg = DateTime.Now.ToFileTime().ToString();

            String dirPath = "C:/inetpub/wwwroot/Unique Id/img_chk/" + msg + ".jpeg";


            File.WriteAllBytes(dirPath, bytes);
            string mss = "~//img_chk//" + msg + ".jpeg";
            recon rc = new recon();
            string x = rc.MakeRequest1(mss, Context);
            if (x == "")
            {
                return "no";
            }
            else
            {
                
                return x;
            }
        }
        catch (Exception ex)
        {

            return "err" + ex.Message;
        }
    }
    
}
