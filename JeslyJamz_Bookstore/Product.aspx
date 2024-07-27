<%@ Page Title="Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="JeslyJamz_Bookstore.Product" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h2>Products</h2>
                <p class="text-primary">Welcome Back, <%: Session["FirstName"] ?? "Guest" %>!</p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-8">
                <div class="form-group">
                    <label class="col-sm-5">Please select a product:</label>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="Title" 
                            DataValueField="BookID" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString='<%$ ConnectionStrings:JeslyJames_BookStoreConnectionString %>' 
                            SelectCommand="SELECT * FROM [Book]">
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12"><h4><asp:Label ID="lblName" runat="server"></asp:Label></h4></div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12"><asp:Label ID="lblShortDescription" runat="server"></asp:Label></div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12"><asp:Label ID="lblLongDescription" runat="server"></asp:Label></div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12"><asp:Label ID="lblUnitPrice" runat="server"></asp:Label></div>
                </div>
            </div>
            <div class="col-sm-4">
                <asp:Image ID="imgProduct" runat="server" CssClass="product-image" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="form-group">
                    <label class="col-sm-1">Quantity:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" 
                            runat="server" ControlToValidate="txtQuantity" Display="Dynamic" 
                            ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-danger" 
                            ControlToValidate="txtQuantity" Display="Dynamic" 
                            ErrorMessage="Quantity must range from 1 to 500."
                            MaximumValue="500" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" 
                            OnClick="btnAdd_Click" CssClass="btn btn-primary" />
                        <asp:Button ID="btnCart" runat="server" Text="Go to Cart" 
                            PostBackUrl="~/Cart.aspx" CausesValidation="False" CssClass="btn btn-secondary" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
