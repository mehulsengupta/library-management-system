<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifybookshelf.aspx.cs" Inherits="modifybookshelf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="Book_icon.png"/>
    <title>Edit Existing Book Collection</title>
</head>
<body style="margin:0px;padding:0px;">
    <form id="form1" runat="server">
    <div style="height: 658px; width: 100%; text-align: center;">
    
            
           
        

        
    
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Rockwell Extra Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="#0033CC" style="z-index: 1; left: 436px; top: 7px; position: absolute; width: 411px; height: 60px; text-align: center;" Text="BookPicker.com"></asp:Label>
    
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 182px; top: 131px; position: absolute; height: 33px; width: 72px; right: 1033px;" Text="Home" OnClick="Button1_Click" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" />
    
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 990px; top: 135px; position: absolute; height: 31px; width: 101px;" Text="LOGOUT" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" />
        <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 725px; top: 135px; position: absolute; height: 33px; width: 105px;" Text="Button" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" />
        <asp:Label ID="Label1" runat="server" BackColor="#FF66CC" Font-Bold="True" Font-Names="Castellar" Font-Size="XX-Large" ForeColor="#6600FF" style="z-index: 1; left: 28px; top: 199px; position: absolute; height: 47px; width: 1210px" Text="BOOK DETAILS:"></asp:Label>
    
        <asp:Button ID="Button4" runat="server" PostBackUrl="addnewbook.aspx" style="z-index: 1; left: 473px; top: 134px; position: absolute; width: 140px; height: 37px;" Text="ADD NEW BOOK" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" />
    
        
    
        <img src="images.jpg" style="width: 168px; height: 107px; z-index: 1; left: 187px; top: 11px; position: absolute;" /></div>
        <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" runat="server" style="z-index: 1; left: 134px; top: 373px; position: absolute; height: 182px; width: 768px; text-align: center;">
            <Columns>
                <asp:CommandField SelectText="UPDATE" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="z-index: 1; left: 426px; top: 297px; position: absolute; height: 36px; width: 233px" Height="45px">
        </asp:DropDownList>
        <asp:Label ID="Label2" runat="server" ForeColor="#3399FF" style="z-index: 1; left: 101px; top: 298px; position: absolute; width: 269px" Text="SELECT CATEGORY TO MODIFY:"></asp:Label>
    </form>
</body>
</html>
