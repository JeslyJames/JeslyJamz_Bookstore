using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JeslyJamz_Bookstore
{
    public partial class Cart : System.Web.UI.Page
    {
        private CartItemList cart;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve cart items from session
                cart = CartItemList.GetCart();
                // Display cart items
                DisplayCart();
            }
        }

        private void DisplayCart()
        {
            lstCart.Items.Clear();
            // Populate the list box with cart items
            foreach (CartItem item in cart)
            {
                lstCart.Items.Add(item.Display());
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            // Check if the cart is null
            if (cart == null)
            {
                // Initialize the cart
                cart = CartItemList.GetCart();
            }

            // Check if an item is selected in the cart
            if (lstCart.SelectedIndex != -1)
            {
                // Remove the selected item from the cart
                cart.RemoveAt(lstCart.SelectedIndex);
                // Update the cart display
                DisplayCart();
            }
            else
            {
                lblMessage.Text = "Please select the item you want to remove.";
            }
        }
        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            // Clear all items from the cart
            cart.Clear();
            // Update the cart display
            DisplayCart();
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            // Redirect to the checkout page
            Response.Redirect("~/Checkout.aspx");
        }
    }
}