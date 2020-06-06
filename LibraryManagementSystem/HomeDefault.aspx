<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeDefault.aspx.cs" Inherits="HomeDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="Book_icon.png"/>
    <title>Sign In</title>
    <style>.dropbtn {
			 background-color: #234567;
			 color: white;
			 padding: 18px;
			 font-size: 16px;
			 border: none;
			 cursor: pointer;
             text-align:center;
}</style>
</head>
<body style="margin:0px;padding:0px; background-image:url('L1.jpg');background-size:cover;">
    <form runat="server" style="height:705px; width:100%; margin:auto;">
    <div style="margin: 0px 201px 0px 0px; height: 453px; align:center;width:124%; padding:0px;" >
        
            
           
        

        
    
            <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#FF5050" BorderStyle="None" Font-Names="Arial Narrow" Font-Underline="False" ForeColor="#FFFFCC" NavigateUrl="~/First.aspx" style="z-index: 1; left: 870px; top: 67px; position: absolute; height: 32px; width: 72px; text-align: center">Home</asp:HyperLink>
        
            
           
        

        
    
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Rockwell Extra Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="#0033CC" style="z-index: 1; left: 484px; top: 7px; position: absolute; width: 411px; height: 60px; text-align: center;" Text="BookPicker.com"></asp:Label>
    
            <asp:Label ID="Label2" runat="server" Style="z-index: 1; left: 248px; top: 214px; position: absolute; height: 19px; width: 139px" Text="PASSWORD:"></asp:Label>
            <asp:TextBox ID="TextBox1" placeholder="Enter Membership ID" runat="server" Style="z-index: 1; left: 442px; top: 149px; position: absolute; width: 198px; height: 36px;"></asp:TextBox>
            <asp:TextBox ID="TextBox2" placeholder="Enter password" runat="server" Style="z-index: 1; left: 442px; top: 209px; position: absolute; width: 197px; height: 36px;" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*PASSWORD REQUIRED" ForeColor="Red" Style="z-index: 1; left: 744px; top: 207px; position: absolute">*PASSWORD REQUIRED</asp:RequiredFieldValidator>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*MEMBER ID REQUIRED" ForeColor="Red" Style="z-index: 1; left: 747px; top: 162px; position: absolute"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" class="dropbtn" runat="server" Style="z-index: 1; left: 391px; top: 381px; position: absolute; width: 146px; height: 67px;" Text="SIGN IN" OnClick="Button1_Click" />
        
            <asp:Label ID="Label1" runat="server" Style="z-index: 1; left: 214px; top: 165px; position: absolute; height: 22px; width: 145px" Text="MEMBERSHIP ID:"></asp:Label>
        
            <asp:HyperLink ID="HyperLink1" href="SignUp.aspx" runat="server" ForeColor="#3366FF" Style="z-index: 1; left: 638px; top: 385px; position: absolute; width: 63px">SIGN UP</asp:HyperLink>
        
        
    
        <img src="images.jpg" style="width: 218px; height: 141px; z-index: 1; left: 55px; top: 13px; position: absolute;" /></div>
    </form>
</body>
</html>
