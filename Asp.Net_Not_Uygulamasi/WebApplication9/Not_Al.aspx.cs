using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Web.Mail;

namespace WebApplication9
{
  
    public partial class Not_Al : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source = SATELLITE; Initial Catalog = Not; Integrated Security = True");//@"Data Source=Notlarim.mssql.somee.com;Initial Catalog=Notlarim;Persist Security Info=True;User ID=denemeDB;Password=deneme123.");


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand aktar = new SqlCommand("select yazi,tarih from Notlarım where id=" + GridView1.SelectedValue + "", baglanti);
            SqlDataReader oku = null;
            baglanti.Open();
            oku = aktar.ExecuteReader();
            while (oku.Read())
            {
                CKEditorControl1.Text = oku.GetString(0).ToString();
                TextBox1.Text = oku.GetString(1).ToString();
            }
            oku.Close();
            baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string yazi = CKEditorControl1.Text.Trim();
            string tarih = TextBox1.Text.Trim();
            SqlCommand komut = new SqlCommand("insert into Notlarım(yazi,tarih) values('" + yazi + "','" + tarih + "')");
            baglanti.Open();
            komut.Connection = baglanti;
            komut.ExecuteNonQuery();
            komut.Dispose();
            baglanti.Close();
            Response.Redirect("Not_Al.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            System.Net.Mail.MailMessage ePosta = new System.Net.Mail.MailMessage();
            ePosta.From = new MailAddress("notgonderim@gmail.com");
            ePosta.To.Add(TextBox2.Text);
            ePosta.Body = CKEditorControl1.Text;
            ePosta.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Credentials = new NetworkCredential("notgonderim@gmail.com", "not1234_");
            smtp.Port = 587;
            smtp.Host = "smtp.gmail.com ";
            smtp.EnableSsl = true;
            smtp.Send(ePosta);
            Button2.Text = "E-Posta Başarıyla Gönderildi";
        }
    }
}