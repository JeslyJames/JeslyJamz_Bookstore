using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JeslyJamz_Bookstore
{
    public partial class Product : Page
    {
        private Books selectedProduct;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlProducts.DataBind();
            }
            UpdateProductDetails();
        }

        protected void ddlProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateProductDetails();
        }

        private void UpdateProductDetails()
        {
            selectedProduct = this.GetSelectedProduct();
            lblName.Text = selectedProduct.Title;
            lblShortDescription.Text = selectedProduct.Author;
            lblLongDescription.Text = selectedProduct.GenreID;
            lblUnitPrice.Text = selectedProduct.Price + " each";
            imgProduct.ImageUrl = "~/Images/" + selectedProduct.ImageName;
        }

        private Books GetSelectedProduct()
        {
            DataView productsTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            productsTable.RowFilter = "BookID = '" + ddlProducts.SelectedValue + "'";
            DataRowView row = productsTable[0];

            Books p = new Books
            {
                BookID = row["BookID"].ToString(),
                Title = row["Title"].ToString(),
                Author = row["Author"].ToString(),
                GenreID = row["GenreID"].ToString(),
                Price = row["Price"].ToString(),
                ImageName = row["ImageName"].ToString()
            };
            return p;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.BookID];

                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct, Convert.ToInt32(txtQuantity.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }
                Response.Redirect("Cart.aspx");
            }
        }
    }
}
