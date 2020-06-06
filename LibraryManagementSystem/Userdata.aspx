<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userdata.aspx.cs" Inherits="Userdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="Book_icon.png"/>
    <title>Issued Book Details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 949px; width: 1289px">
    
            
           
        

        
    
        <img src="images.jpg" style="width: 217px; height: 141px; z-index: 1; left: 64px; top: 33px; position: absolute;" /><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Rockwell Extra Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="#0033CC" style="z-index: 1; left: 408px; top: 34px; position: absolute; width: 411px; height: 60px; text-align: center;" Text="BookPicker.com"></asp:Label>
    
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 162px; top: 236px; position: absolute; height: 30px; width: 60px;" Text="Home" BackColor="Red" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 968px; top: 235px; position: absolute;height: 30px; width: 79px; right: 265px;" Text="Profile" BackColor="Red" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 1065px; top: 234px; position: absolute;height: 30px; width: 79px;" Text="LogOut" BackColor="Red" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button3_Click"/>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.jpg" style="z-index: 1; left: 923px; top: 231px; position: absolute; height: 35px; width: 35px" />
         <asp:Label ID="Label2" runat="server" style="z-index: 1;margin-left:0px; left: 10px; top: 367px; width:95%; position: absolute; height: 38px; padding-left:5%; text-align: center;" Text="Book(s) Issued" BackColor="#E4C2C9" Font-Bold="False" Font-Names="Eras Demi ITC" ForeColor="#6F6FFF" Font-Size="X-Large"></asp:Label>

        <asp:Label ID="Label4" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Names="Monotype Corsiva" Font-Size="X-Large" style="z-index: 1; left: 229px; top: 311px; position: absolute; height: 26px; width: 35px" Text="ID:"></asp:Label>
       
        <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" runat="server" style="z-index: 1; left: 321px; top: 431px; position: absolute; height: 185px; width: 678px; text-align: center;" >
            <Columns>
                <asp:CommandField SelectText="Return" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
       
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 301px; top: 315px; position: absolute; width: 136px" Font-Bold="True" Font-Names="Monotype Corsiva" Font-Size="X-Large"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 197px; top: 679px; position: absolute; height: 22px; width: 916px; text-align: center;" Text="FOR E-BOOK PLEASE VISIT THE BOOK-DETAILS PAGE OF THE CORRESPONDING BOOK"></asp:Label>
    </div>
    </form>
</body>
</html>
