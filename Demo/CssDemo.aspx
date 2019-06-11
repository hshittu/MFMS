<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CssDemo.aspx.cs" Inherits="Demo_CssDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
            h1 {
                Color:green;
                font-size:20px;
            }
            p{
                font-style:italic;
                color:Blue;
            }
            .RightAligned{
                text-align:right;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Welcome to Css demo</h1>
        <p>Go around</p>
        <h2 class="RightAligned">please be cautious</h2>
    </div>
    </form>
</body>
</html>
