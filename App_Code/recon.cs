using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Drawing;
using System.Net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Web.Script.Serialization;
using System.Text;

/// <summary>
/// Summary description for recon
/// </summary>
public class recon
{
	public recon()
	{
		//
		// TODO: Add constructor logic here
		//
	}
        byte[] bytes,bytes2;
        public string MakeRequest11(string fn, HttpContext cont)
        {
            try
            {
                var client = new WebClient();
                var queryString = HttpUtility.ParseQueryString("70998e95-07b2-4a62-931c-a18f35166c92");
                string qq = "70998e95-07b2-4a62-931c-a18f35166c92";
                var uri55 = "https://westus.api.cognitive.microsoft.com/face/v1.0/findsimilars?" + qq;

                // Request headers
                WebRequest wr = WebRequest.Create(uri55);
                wr.Method = "POST";
                wr.ContentType = "application/octet-stream";
                wr.Headers.Add("Ocp-Apim-Subscription-Key", "2719fe942c0e4efb87cf7b57cb88555f");
                //Stream st = wr.GetRequestStream();
               // st.Write(bytes, 0, bytes.Length);
                WebResponse response = wr.GetResponse();
                StreamReader str = new StreamReader(response.GetResponseStream());
                string d = str.ReadToEnd();


                return "ok";

            }
            catch (Exception)
            {
                
                throw;
            }
        }

    public string MakeRequest1(string fn, HttpContext cont)
    {
        try
        {
            var client = new WebClient();
              bytes = System.IO.File.ReadAllBytes(cont.Server.MapPath(fn));

            Bitmap img = new Bitmap(cont.Server.MapPath(fn));
             var uri = "https://westcentralus.api.cognitive.microsoft.com/face/v1.0/detect?returnFaceId=true&returnFaceLandmarks=true";
            var uri1 = "https://westcentralus.api.cognitive.microsoft.com/face/v1.0/detect?returnFaceId=true&returnFaceRectangle=true";



            WebRequest wr = WebRequest.Create(uri);
            wr.Method = "POST";
            wr.ContentType = "application/octet-stream";

            wr.Headers.Add("Ocp-Apim-Subscription-Key", "ab479957459b485286959e00e236e55a");
           
            Stream st = wr.GetRequestStream();
            st.Write(bytes, 0, bytes.Length);
            WebResponse response = wr.GetResponse();
            StreamReader str = new StreamReader(response.GetResponseStream());
            string d = str.ReadToEnd();



            WebRequest wr1 = WebRequest.Create(uri);
            wr1.Method = "POST";
            
            
            wr1.ContentType = "application/octet-stream";


            wr1.Headers.Add("Ocp-Apim-Subscription-Key", "ab479957459b485286959e00e236e55a");
            Stream st1 = wr1.GetRequestStream();
            st1.Write(bytes, 0, bytes.Length);
            WebResponse response1 = wr1.GetResponse();
            StreamReader str1 = new StreamReader(response1.GetResponseStream());
            string d1 = str1.ReadToEnd();


            var result = JsonConvert.DeserializeObject<List<RootObject>>(d);
            var result1 = JsonConvert.DeserializeObject<List<RootObject>>(d1);


            var  tt = result[0];
            string rr = tt.faceId;

           
            
            return rr;
        }
        catch
        {
            return "11#11#111";
        }
        // Request body
    }


    public class FaceRectangle
    {
        public int top { get; set; }
        public int left { get; set; }
        public int width { get; set; }
        public int height { get; set; }
    }

    public class HairColor
    {
        public string color { get; set; }
        public double confidence { get; set; }
    }

    public class Hair
    {
        public double bald { get; set; }
        public bool invisible { get; set; }
        public List<HairColor> hairColor { get; set; }
    }

    public class HeadPose
    {
        public double pitch { get; set; }
        public double roll { get; set; }
        public double yaw { get; set; }
    }

    public class FacialHair
    {
        public double moustache { get; set; }
        public double beard { get; set; }
        public double sideburns { get; set; }
    }

    public class Makeup
    {
        public bool eyeMakeup { get; set; }
        public bool lipMakeup { get; set; }
    }

    public class Emotion
    {
        public double anger { get; set; }
        public double contempt { get; set; }
        public double disgust { get; set; }
        public double fear { get; set; }
        public double happiness { get; set; }
        public double neutral { get; set; }
        public double sadness { get; set; }
        public double surprise { get; set; }
    }

    public class Occlusion
    {
        public bool foreheadOccluded { get; set; }
        public bool eyeOccluded { get; set; }
        public bool mouthOccluded { get; set; }
    }

    public class Accessory
    {
        public string type { get; set; }
        public double confidence { get; set; }
    }

    public class Blur
    {
        public string blurLevel { get; set; }
        public double value { get; set; }
    }

    public class Exposure
    {
        public string exposureLevel { get; set; }
        public double value { get; set; }
    }

    public class Noise
    {
        public string noiseLevel { get; set; }
        public double value { get; set; }
    }

    public class FaceAttributes
    {
        public Hair hair { get; set; }
        public double smile { get; set; }
        public HeadPose headPose { get; set; }
        public string gender { get; set; }
        public double age { get; set; }
        public FacialHair facialHair { get; set; }
        public string glasses { get; set; }
        public Makeup makeup { get; set; }
        public Emotion emotion { get; set; }
        public Occlusion occlusion { get; set; }
        public List<Accessory> accessories { get; set; }
        public Blur blur { get; set; }
        public Exposure exposure { get; set; }
        public Noise noise { get; set; }
    }

    public class PupilLeft
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class PupilRight
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class NoseTip
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class MouthLeft
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class MouthRight
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyebrowLeftOuter
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyebrowLeftInner
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyeLeftOuter
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyeLeftTop
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyeLeftBottom
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyeLeftInner
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyebrowRightInner
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyebrowRightOuter
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyeRightInner
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyeRightTop
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyeRightBottom
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class EyeRightOuter
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class NoseRootLeft
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class NoseRootRight
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class NoseLeftAlarTop
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class NoseRightAlarTop
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class NoseLeftAlarOutTip
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class NoseRightAlarOutTip
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class UpperLipTop
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class UpperLipBottom
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class UnderLipTop
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class UnderLipBottom
    {
        public double x { get; set; }
        public double y { get; set; }
    }

    public class FaceLandmarks
    {
        public PupilLeft pupilLeft { get; set; }
        public PupilRight pupilRight { get; set; }
        public NoseTip noseTip { get; set; }
        public MouthLeft mouthLeft { get; set; }
        public MouthRight mouthRight { get; set; }
        public EyebrowLeftOuter eyebrowLeftOuter { get; set; }
        public EyebrowLeftInner eyebrowLeftInner { get; set; }
        public EyeLeftOuter eyeLeftOuter { get; set; }
        public EyeLeftTop eyeLeftTop { get; set; }
        public EyeLeftBottom eyeLeftBottom { get; set; }
        public EyeLeftInner eyeLeftInner { get; set; }
        public EyebrowRightInner eyebrowRightInner { get; set; }
        public EyebrowRightOuter eyebrowRightOuter { get; set; }
        public EyeRightInner eyeRightInner { get; set; }
        public EyeRightTop eyeRightTop { get; set; }
        public EyeRightBottom eyeRightBottom { get; set; }
        public EyeRightOuter eyeRightOuter { get; set; }
        public NoseRootLeft noseRootLeft { get; set; }
        public NoseRootRight noseRootRight { get; set; }
        public NoseLeftAlarTop noseLeftAlarTop { get; set; }
        public NoseRightAlarTop noseRightAlarTop { get; set; }
        public NoseLeftAlarOutTip noseLeftAlarOutTip { get; set; }
        public NoseRightAlarOutTip noseRightAlarOutTip { get; set; }
        public UpperLipTop upperLipTop { get; set; }
        public UpperLipBottom upperLipBottom { get; set; }
        public UnderLipTop underLipTop { get; set; }
        public UnderLipBottom underLipBottom { get; set; }
    }

    public class RootObject
    {
        public string faceId { get; set; }
        public FaceRectangle faceRectangle { get; set; }
        public FaceAttributes faceAttributes { get; set; }
        public FaceLandmarks faceLandmarks { get; set; }
    }


}
