<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JeslyJamz_Bookstore._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 text-center">
                <h1>Welcome to Jesly Bookstore</h1>
                <p>You can find what you like to read!</p>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-4 text-center">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Science Fiction</h5>
                        <p class="card-text">Discover the best science fiction books.</p>
                        <a href="Product.aspx?genre=ScienceFiction" class="btn btn-primary">Explore</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Fantasy</h5>
                        <p class="card-text">Explore our collection of fantasy books.</p>
                        <a href="Product.aspx?genre=Fantasy" class="btn btn-primary">Explore</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Mystery</h5>
                        <p class="card-text">Dive into the best mystery novels.</p>
                        <a href="Product.aspx?genre=Mystery" class="btn btn-primary">Explore</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-4 text-center">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Non-Fiction</h5>
                        <p class="card-text">Browse our non-fiction books.</p>
                        <a href="Product.aspx?genre=NonFiction" class="btn btn-primary">Explore</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Romance</h5>
                        <p class="card-text">Find your next romance novel.</p>
                        <a href="Product.aspx?genre=Romance" class="btn btn-primary">Explore</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Horror</h5>
                        <p class="card-text">Get spooked with our horror books.</p>
                        <a href="Product.aspx?genre=Horror" class="btn btn-primary">Explore</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
