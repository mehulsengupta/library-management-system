<%@ Page Language="C#" AutoEventWireup="true" CodeFile="First.aspx.cs" Inherits="First" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="Book_icon.png"/>
    <title>Welcome to BookPicker.com- Universal E-Book Portal and Library Management System</title>

    <style type="text/css">
        #form1 {
            height: 991px;
        }
        body {
padding: 0;
margin: 0;
}
        
		
    </style>
</head>
<body  style="margin :0%;padding:0%;">
    <form id="form1" runat="server">
        
    
    
        
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Label ID="Label4" runat="server" Font-Names="Berlin Sans FB" Font-Size="X-Large" ForeColor="Red" style="z-index: 1; left: 520px; top: 185px; position: absolute; height: 40px; width: 288px; text-align: center" Text="NEW E-BOOKS AVAILABLE"></asp:Label>
    
        
    
        <asp:Image ID="Image1" runat="server" style="z-index: 1; left: 1070px; top: 34px; position: absolute; height: 35px; width: 35px" Visible="False" ImageUrl="~/ProfilePictures/Default.png" />
    
        
    
        <img src="images.jpg" style="width: 218px; height: 141px;" /><asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 297px; top: 73px; position: absolute; height: 48px; width: 650px" TextMode="Search" BorderColor="#9999FF" ForeColor="#669999" ToolTip="Search Here" placeholder="Search using book title, author, subject, publisher or accession number only!" OnTextChanged="TextBox1_TextChanged" CausesValidation="True"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 1114px; top: 39px; position: absolute; height: 31px; width: 88px; right: 85px;" Text="Log In" BorderStyle="None" BackColor="#FFFF80" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 1220px; top: 40px; position: absolute; width: 66px; height: 30px;" Text="Sign Up" BackColor="Red" BorderStyle="None" ForeColor="White" PostBackUrl="~/SignUp.aspx" OnClick="Button2_Click" />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/lens.png" style="z-index: 1; left: 973px; top: 87px; position: absolute; height: 25px; width: 36px; bottom: 452px" BorderColor="White" OnClick="ImageButton1_Click" />
         <asp:Label ID="Label1" runat="server" ForeColor="#0066FF" style="z-index: 1;  position: absolute; width: 133px; height: 22px; top: -16px; left: 480px; margin-top: 165px;" Text="Browse by Subject"></asp:Label>
           
            <asp:Button ID="Button10" runat="server" BackColor="#66FFFF" BorderStyle="None" Font-Names="Berlin Sans FB" Font-Size="X-Large" style="z-index: 1; left: 516px; top: 374px; position: absolute; height: 56px; width: 263px" Text="MODIFY BOOK-SHELF" Visible="False" />
           
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" ForeColor="#663300" style="z-index: 1;  position: absolute; height: 27px; width: 218px; top: 118px; left: 638px; margin-top: 30px;" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Art</asp:ListItem>
                <asp:ListItem>Sci-Fi</asp:ListItem>
                <asp:ListItem>Fantasy</asp:ListItem>
                <asp:ListItem>Biographies</asp:ListItem>
                <asp:ListItem>Recipes</asp:ListItem>
                <asp:ListItem>Romance</asp:ListItem>
                <asp:ListItem>Textbooks</asp:ListItem>
                <asp:ListItem>Children</asp:ListItem>
                <asp:ListItem>History</asp:ListItem>
                <asp:ListItem>Medicine</asp:ListItem>
                <asp:ListItem>Religion</asp:ListItem>
                <asp:ListItem>Mysteries</asp:ListItem>
                <asp:ListItem>Science</asp:ListItem>
                <asp:ListItem>Plays</asp:ListItem>
            </asp:DropDownList>
      
       
        
           
            
            
           <asp:Panel ID="Panel1" runat="server" BackColor="#99FF33" style="z-index: 1; left: 12px; top: 589px; position: absolute; height: 204px; width: 224px">
               <asp:Button ID="Button7" runat="server" style="z-index: 0; left: 69px; top: 81px; position: absolute" Text="About Us " BackColor="#99FF33" BorderColor="#99FF33" BorderStyle="None" OnClick="Button7_Click" />
               <asp:Button ID="Button8" runat="server" BackColor="#99FF33" BorderStyle="None" style="z-index: 0; left: 20px; top: 137px; position: absolute; width: 179px" Text="Rules &amp; Regulations" OnClick="Button8_Click" />
        </asp:Panel>
            
           <!-- <asp:Label ID="Label2" runat="server" BackColor="#99FF33" BorderStyle="None" style="z-index: 1; left: 62px; top: 63px; position: absolute; height: 36px; width: 1222px; margin-right:0px; marquee-direction:forward;" Text="BookPicker.Com is a  open library  where e-books are  available.  Books can be Borrowed by Students of RCCIIT, Kolkata & GCETT, Serampore from College's Central Library."></asp:Label></> -->
            
            
           
        

        
    
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Rockwell Extra Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="#0033CC" style="z-index: 1; left: 411px; top: 7px; position: absolute; width: 411px; height: 60px; text-align: center;" Text="BookPicker.com"></asp:Label>
    
            <asp:Label ID="Label5" runat="server" BackColor="#FFCCCC" BorderStyle="None" Font-Bold="True" style="z-index: 1; left: 14px; top: 541px; position: absolute; height: 43px; width: 223px" Text="P.S: This site is best viewed in Internet Explorer 7 or above."></asp:Label>
    
            <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" runat="server" style="z-index: 1; left: 351px; top: 639px; position: absolute; height: 265px; width: 595px; text-align: center" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:CommandField SelectText="Choose" ShowSelectButton="True" />
                </Columns>
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
            <asp:Button ID="Button9" runat="server" BackColor="Red" BorderStyle="None" ForeColor="White" OnClick="Button9_Click" style="z-index: 1; left: 1219px; top: 39px; position: absolute; height: 30px; width: 69px" Text="LOGOUT" Visible="False" />
            
       
        <br />
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
<br />
<br />
<br />
                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/ImageRotate.xml" style="z-index: 1; left: 582px; top: 293px; position: absolute; height: 181px; width: 147px" />
                <asp:Timer ID="Timer1" runat="server" Interval="5000">
                </asp:Timer>
                <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="~/Image2L.xml" style="z-index: 1; left: 874px; top: 291px; position: absolute; height: 185px; width: 162px;" />
                <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/Image2R.xml" style="z-index: 1; left: 283px; top: 295px; position: absolute; height: 178px; width: 156px" />
<br />
<br />
<br />
<br />
<br />
                <br />
                <br />
                <br />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
            
       
    </form>
   
</body>
</html>
