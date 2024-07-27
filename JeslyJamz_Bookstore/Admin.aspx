<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="JeslyJamz_Bookstore.Admin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="card-title">Admin Page</h2>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-sm-12">
                <label for="ddlGenres">Choose a genre:</label>
                <asp:DropDownList ID="ddlGenres" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="GenreName" DataValueField="GenreID" CssClass="form-control"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JeslyJames_BookStoreConnectionString %>" SelectCommand="SELECT * FROM Genre"></asp:SqlDataSource>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-sm-12">
                <asp:GridView ID="gvGenres" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" CssClass="table table-striped" DataKeyNames="GenreID">
                    <Columns>
                        <asp:BoundField DataField="GenreID" HeaderText="ID" ReadOnly="True" SortExpression="GenreID" />
                        <asp:BoundField DataField="GenreName" HeaderText="Name" SortExpression="GenreName" />
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JeslyJames_BookStoreConnectionString %>" 
                    SelectCommand="SELECT * FROM Genre" 
                    DeleteCommand="DELETE FROM Genre WHERE GenreID = @GenreID" 
                    UpdateCommand="UPDATE Genre SET GenreName = @GenreName WHERE GenreID = @GenreID"
                    InsertCommand="INSERT INTO Genre (GenreName) VALUES (@GenreName)">
                    <DeleteParameters>
                        <asp:Parameter Name="GenreID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="GenreName" Type="String" />
                        <asp:Parameter Name="GenreID" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="GenreName" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-sm-12">
                <h3 class="card-title">Add New Genre</h3>
                <div class="form-group">
                    <label for="txtGenreName">Name</label>
                    <asp:TextBox ID="txtGenreName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Button ID="btnAddGenre" runat="server" Text="Add New Genre" CssClass="btn btn-primary" OnClick="btnAddGenre_Click" />
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-sm-12">
                <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" AllowPaging="True" AllowSorting="True" CssClass="table table-striped" DataKeyNames="BookID" OnSelectedIndexChanged="gvBooks_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="BookID" HeaderText="ID" ReadOnly="True" SortExpression="BookID" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                        <asp:BoundField DataField="GenreID" HeaderText="Genre" SortExpression="GenreID" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="SelectButton" runat="server" CommandName="Select" Text="Select" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JeslyJames_BookStoreConnectionString %>" 
                    SelectCommand="SELECT * FROM Book" 
                    DeleteCommand="DELETE FROM Book WHERE BookID = @BookID" 
                    UpdateCommand="UPDATE Book SET Title = @Title, Author = @Author, GenreID = @GenreID, Price = @Price WHERE BookID = @BookID"
                    InsertCommand="INSERT INTO Book (Title, Author, GenreID, Price) VALUES (@Title, @Author, @GenreID, @Price)">
                    <DeleteParameters>
                        <asp:Parameter Name="BookID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Author" Type="String" />
                        <asp:Parameter Name="GenreID" Type="Int32" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="BookID" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Author" Type="String" />
                        <asp:Parameter Name="GenreID" Type="Int32" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-sm-12">
                <asp:DetailsView ID="dvBookDetails" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource4" DefaultMode="ReadOnly">
                    <Fields>
                        <asp:BoundField DataField="BookID" HeaderText="Product ID" ReadOnly="True" />
                        <asp:BoundField DataField="Title" HeaderText="Name" />
                        <asp:BoundField DataField="Author" HeaderText="Short Description" />
                        <asp:BoundField DataField="GenreID" HeaderText="Category" />
                        <asp:BoundField DataField="ImageName" HeaderText="ImageFile" />
                        <asp:BoundField DataField="Price" HeaderText="Unit Price" />
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
            </div>
        </div>
    </div>
</asp:Content>






