using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication9
{
    public partial class Not_Sil : System.Web.UI.Page
    {
        // SqlConnection baglanti = new SqlConnection(@"Data Source=Notlarim.mssql.somee.com;Initial Catalog=Notlarim;Persist Security Info=True;User ID=denemeDB;Password=deneme123.");
        SqlConnection baglanti = new SqlConnection(@"Data Source = SATELLITE; Initial Catalog = Not; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                string yazi = CKEditorControl1.Text.Trim();
                string tarih = TextBox1.Text.Trim();
                string sorgu = "DELETE FROM Notlarım WHERE id=" + GridView1.SelectedRow.Cells[1].Text + "";
                SqlCommand komut = new SqlCommand(sorgu, baglanti);
                baglanti.Open();
                komut.Connection = baglanti;
                komut.ExecuteNonQuery();
                komut.Dispose();
                baglanti.Close();
                Response.Redirect("Not_Sil.aspx");
            }
            catch (Exception)
            {
                Response.Write("Silinmedi");
            }
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
    }
}