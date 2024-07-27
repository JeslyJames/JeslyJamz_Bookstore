using System;
using System.Web.UI;

namespace JeslyJamz_Bookstore
{
    public partial class Admin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGenres();
            }
        }

        private void BindGenres()
        {
            ddlGenres.DataBind();
            gvGenres.DataBind();
            gvBooks.DataBind();
            dvBookDetails.DataBind();
        }

        protected void btnAddGenre_Click(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["GenreName"].DefaultValue = txtGenreName.Text;
            SqlDataSource3.Insert();
            txtGenreName.Text = string.Empty;
            BindGenres(); // Rebind genres after inserting a new one
        }

        protected void gvBooks_SelectedIndexChanged(object sender, EventArgs e)
        {
            dvBookDetails.PageIndex = gvBooks.SelectedIndex;
            dvBookDetails.DataBind();
        }
    }
}
