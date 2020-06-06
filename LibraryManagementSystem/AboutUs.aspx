<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="Book_icon.png"/>
    <title>About Us</title>
</head>
<body style="height: 519px; margin:0px; padding:0px;">
    <form id="form1" runat="server">
    <div style="text-align:centerl height: 783px; width:100%; margin:0px; padding:0px;">
    
        
    
        <img src="images.jpg" style="width: 218px; height: 141px;" /><asp:Button ID="Button1" runat="server" style="z-index: 1; left: 1050px; top: 39px; position: absolute; height: 31px; width: 88px; right: 149px;" Text="Log In" BorderStyle="None" BackColor="#FFFF80" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 1152px; top: 39px; position: absolute; width: 66px; height: 30px;" Text="Sign Up" BackColor="Red" BorderStyle="None" ForeColor="White" PostBackUrl="~/SignUp.aspx" OnClick="Button2_Click" />
       
        <div style="z-index: 1; left: 17px; top: 708px; position: absolute; height: 13%; width: 99%; background-color :#99FF33;background-attachment : fixed; margin-top: 0px;">
           
           <!-- <asp:Label ID="Label2" runat="server" BackColor="#99FF33" BorderStyle="None" style="z-index: 1; left: 62px; top: 63px; position: absolute; height: 36px; width: 1222px; margin-right:0px; marquee-direction:forward;" Text="BookPicker.Com is a  open library  where e-books are  available.  Books can be Borrowed by Students of RCCIIT, Kolkata & GCETT, Serampore from College's Central Library."></asp:Label></> -->
            
            <asp:Button ID="Button8" runat="server" BackColor="#99FF33" BorderStyle="None" style="z-index: 1; left: 549px; top: 25px; position: absolute; width: 179px; bottom: 26px;" Text="Rules &amp; Regulations" OnClick="Button8_Click" />
           
            <asp:Label ID="Label10" runat="server" BackColor="#CCFF66" BorderStyle="None" Font-Bold="True" Font-Names="Bell MT" Font-Size="XX-Large" Font-Underline="True" style="z-index: 1; left: 192px; top: -550px; position: absolute; width: 159px; height: 34px; text-align: center;" Text="About Us:-"></asp:Label>
           
        </div>
            <asp:Button ID="Button9" runat="server" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button9_Click" PostBackUrl="First.aspx" style="z-index: 1; left: 272px; top: 40px; position: absolute; height: 37px; width: 71px" Text="Home" />
        <asp:Label ID="Label4" runat="server" BackColor="#66CCFF" style="z-index: 1; left: 186px; top: 206px; position: absolute; height: 68px; width: 907px; text-align: center" Text="BookPicker.com is an open source library management system and a store house of e-books. A variety of books on over a dozen categories are available here free for download. This portal is a part of the B.Tech summer project from the students of GCETT and RCCIIT, Kolkata (4th yr). "></asp:Label>
    
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Rockwell Extra Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="#0033CC" style="z-index: 1; left: 430px; top: 42px; position: absolute; width: 411px; height: 60px; text-align: center;" Text="BookPicker.com"></asp:Label>
    
            <asp:Label ID="Label5" runat="server" BackColor="#FF99CC" BorderColor="#FF66FF" style="z-index: 1; left: 201px; top: 312px; position: absolute; height: 25px; width: 872px; text-align: center" Text="Prepared By:"></asp:Label>
        <asp:Label ID="Label6" runat="server" BackColor="#9966FF" BorderStyle="Ridge" Font-Bold="False" Font-Names="Lucida Calligraphy" style="z-index: 1; left: 250px; top: 384px; position: absolute; height: 106px; width: 130px; text-align: center" Text="Mehul Sengupta                                                           B.Tech CSE                                                              RCCIIT, Kolkata"></asp:Label>
        <asp:Label ID="Label7" runat="server" BackColor="#66FF66" BorderStyle="Ridge" Font-Names="Lucida Calligraphy" style="z-index: 1; left: 479px; top: 507px; position: absolute; height: 105px; width: 126px; text-align: center" Text="Satyajit Choudhary B.Tech CSE GCETT, Serampore"></asp:Label>
        <asp:Label ID="Label8" runat="server" BackColor="#FF9933" BorderStyle="Ridge" Font-Names="Lucida Calligraphy" style="z-index: 1; left: 709px; top: 383px; position: absolute; height: 107px; width: 127px; text-align: center" Text="Vivek Burman B. Tech CSE GCETT, Serampore"></asp:Label>
        <asp:Label ID="Label9" runat="server" BackColor="#CC3300" BorderStyle="Ridge" Font-Names="Lucida Calligraphy" style="z-index: 1; left: 955px; top: 506px; position: absolute; height: 106px; width: 118px; text-align: center" Text="Niraj Upadhyay B.Tech CSE GCETT, Serampore"></asp:Label>
    
    </div>
    </form>
</body>
</html>
