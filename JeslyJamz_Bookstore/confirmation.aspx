<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmation.aspx.cs" Inherits="JeslyJamz_Bookstore.confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.2.3.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    
            <div class="form-group">
                <asp:TextBox ID="txtData" runat="server" TextMode="MultiLine" CssClass="form-control" 
                    Columns="50" Rows="25"></asp:TextBox>  
            </div>

            <div class="form-group">
                <asp:Button ID="btnContinue" runat="server" CssClass="btn btn-default"
                    PostBackUrl="~/Product.aspx" Text="Continue Shopping" />
            </div>

        </form>
</body>
</html>
