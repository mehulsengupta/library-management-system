<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="Book_icon.png"/>
    <title>Member Registration</title>
    <style type="text/css">
        .form1 {
            display:block;
            margin:0 auto;
            height: 739px;
            z-index: 1;
            left: 10px;
            top: 15px;
            position: absolute;
            width: 1267px;
        }
    </style>
</head>
<body style="background-image:url('L2.jpg'); background-size:cover";>
    <form runat="server">
    
            
           
        

        
    
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Rockwell Extra Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="#0033CC" style="z-index: 1; left: 241px; top: 39px; position: absolute; width: 411px; height: 60px; text-align: center;" Text="BookPicker.com"></asp:Label>
    
    <div class="form1">
    
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 835px; top: 135px; position: absolute; height: 21px; width: 142px" Text="PROFILE PICTURE:" BackColor="White"></asp:Label>
    
        <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 1015px; top: 133px; position: absolute" />
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Bradley Hand ITC" Font-Size="XX-Large" ForeColor="#009933" style="z-index: 1; left: 700px; top: 50px; position: absolute; width: 503px; height: 49px" Text="PLEASE FILL IN YOUR DETAILS" BackColor="#FF9966"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 109px; top: 140px; position: absolute; width: 101px" Text="FIRST NAME:" BackColor="White"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 110px; top: 171px; position: absolute; width: 100px" Text="LAST NAME:" BackColor="White"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 114px; top: 203px; position: absolute; height: 23px; width: 96px; bottom: 513px;" Text="EMAIL ID:" BackColor="White"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 115px; top: 246px; position: absolute; width: 91px" Text="GENDER:" BackColor="White"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 114px; top: 292px; position: absolute; width: 96px" Text="ADDRESS:" BackColor="White"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 166px; top: 333px; position: absolute; width: 32px" Text="AGE:" BackColor="White"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 53px; top: 373px; position: absolute; width: 153px" Text="CONTACT NUMBER:" BackColor="White"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 112px; top: 416px; position: absolute; width: 92px" Text="PASSWORD:" BackColor="White"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 36px; top: 459px; position: absolute; width: 173px" Text="CONFIRM PASSWORD:" BackColor="White"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 302px; top: 140px; position: absolute; height: 14px; width: 170px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 302px; top: 170px; position: absolute; width: 171px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 301px; top: 202px; position: absolute; width: 172px"></asp:TextBox>
         <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="z-index: 1; left: 301px; top: 231px; position: absolute; height: 20px; width: 82px" BackColor="White">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 300px; top: 287px; position: absolute; width: 437px" TextMode="MultiLine"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 300px; top: 334px; position: absolute" TextMode="Number"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 299px; top: 372px; position: absolute" TextMode="Number" MaxLength="10"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server" style="z-index: 1; left: 298px; top: 415px; position: absolute" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="*Required Password" ForeColor="#FF3300" style="z-index: 1; left: 485px; top: 418px; position: absolute" BackColor="White"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="*Passwords Mismatch" ForeColor="#FF3300" style="z-index: 1; left: 487px; top: 460px; position: absolute" BackColor="White"></asp:CompareValidator>
        <asp:TextBox ID="TextBox9" runat="server" style="z-index: 1; left: 297px; top: 457px; position: absolute" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TextBox10" runat="server" style="z-index: 1; left: 299px; top: 499px; position: absolute" TextMode="Number"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Enter Correct Mail" ForeColor="#FF3300" style="z-index: 1; left: 493px; top: 204px; position: absolute; width: 134px;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" BackColor="White"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Email Required" ForeColor="#FF3300" style="z-index: 1; left: 493px; top: 204px; position: absolute; right: 674px;" BackColor="White"></asp:RequiredFieldValidator>
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*Select Gender" ForeColor="#FF3300" style="z-index: 1; left: 492px; top: 247px; position: absolute" BackColor="White"></asp:RequiredFieldValidator>
    
   
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*First Name Required" ForeColor="Red" style="z-index: 1; left: 491px; top: 141px; position: absolute" BackColor="White"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Last Name Required" ForeColor="#FF3300" style="z-index: 1; left: 491px; top: 172px; position: absolute" BackColor="White"></asp:RequiredFieldValidator>
        
        
        
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 263px; top: 661px; position: absolute; width: 191px" Text="SIGN UP" OnClick="Button1_Click" />
    
   
        
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 58px; top: 501px; position: absolute; height: 19px; width: 151px" Text="AADHAR NUMBER:" BackColor="White"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Required" ForeColor="#FF3300" style="z-index: 1; left: 487px; top: 503px; position: absolute" BackColor="White"></asp:RequiredFieldValidator>
        
        
        
        
        <img src="images.jpg" style="width: 182px; height: 107px; z-index: 1; left: 0px; top: 0px; position: absolute;" /><asp:HyperLink ID="HyperLink1" runat="server" BackColor="#FF5050" BorderStyle="None" Font-Names="Arial Narrow" Font-Underline="False" ForeColor="#FFFFCC" NavigateUrl="~/First.aspx" style="z-index: 1; left: 875px; top: 230px; position: absolute; height: 34px; width: 79px; text-align: center">Home</asp:HyperLink>
            </div>
        
        </form>
</body>
</html>
