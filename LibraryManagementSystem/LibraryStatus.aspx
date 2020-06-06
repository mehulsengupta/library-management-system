<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LibraryStatus.aspx.cs" Inherits="LibraryStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="Book_icon.png"/>
    <title>Book Details</title>
    <script src="jquery-3.2.1"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 489px; width: 100%">
    
            
           
        

        
    
        <img src="images.jpg" style="width: 157px; height: 124px;" /><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Rockwell Extra Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="#0033CC" style="z-index: 1; left: 476px; top: 14px; position: absolute; width: 411px; height: 60px; text-align: center;" Text="BookPicker.com"></asp:Label>
    
        <asp:HyperLink ID="HyperLink1" runat="server" style="z-index: 1; left: 932px; top: 451px; position: absolute; height: 27px; width: 146px" Visible="False">[HyperLink1]</asp:HyperLink>
    
        <asp:Button ID="Button4" runat="server" BackColor="#000099" BorderStyle="None" ForeColor="#FFCC00" OnClick="Button4_Click" style="z-index: 1; left: 648px; top: 394px; position: absolute; height: 36px; width: 214px;" Text="GET RETURN DATE" Visible="False" />
    
        <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 1043px; top: 47px; position: absolute; width: 62px; height: 27px;" Text="Login" BackColor="Red" BorderStyle="None" ForeColor="White" OnClick="Button2_Click" />
    
        <asp:Button ID="Button3" runat="server" BackColor="Yellow" BorderStyle="None" ForeColor="Red" OnClick="Button3_Click" style="z-index: 1; left: 1126px; top: 48px; position: absolute; width: 62px; height: 26px;" Text="Sign Up" />
    
        <asp:Button ID="Button5" runat="server" BackColor="#FF5151" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button5_Click" style="z-index: 1; left: 300px; top: 47px; position: absolute; height: 30px; width: 65px" Text="Home" />
    
        <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" runat="server" style="z-index: 1; left: 545px; top: 179px; position: absolute; height: 183px; width: 313px; text-align: center" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 696px; top: 441px; position: absolute; width: 114px; height: 35px;" Text="ISSUE" Visible="False" OnClick="Button1_Click" BackColor="Blue" BorderStyle="None" ForeColor="#FFCC00" />
        <asp:Image ID="Image2" runat="server" Height="32px" style="z-index: 1; left: 996px; top: 46px; position: absolute" Width="34px" Visible="False" />
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 389px; top: 443px; position: absolute; height: 36px; width: 268px"></asp:Label>
    
        <asp:Image ID="Image1" runat="server" Height="262px" style="z-index: 1; left: 189px; top: 108px; position: absolute; right: 869px; margin-bottom: 6px" />
    
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 928px; top: 402px; position: absolute; right: 221px; height: 23px; bottom: 139px" Text="E-Book Link" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
