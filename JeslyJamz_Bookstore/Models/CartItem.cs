using JeslyJamz_Bookstore;
using System;

public class CartItem
{
    public CartItem() { }

    public CartItem(Books product, int quantity)
    {
        this.Product = product;
        this.Quantity = quantity;
    }

    public Books Product { get; set; }
    public int Quantity { get; set; }

    public void AddQuantity(int quantity)
    {
        this.Quantity += quantity;
    }

    public string Display()
    {
        string displayString = string.Format("{0} ({1} at {2})",
            Product.Title,
            Quantity.ToString(),
            Product.Price // Format as currency
        );
        return displayString;
    }
}