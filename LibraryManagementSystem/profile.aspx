<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="Book_icon.png"/>
    <title>Edit Your Profile</title>
</head>
<body style="width:100%;margin:0px;padding:0px;">
    <form id="form1" runat="server">
    <div style="height: 1122px; width:100%">
    
        <asp:Button ID="Button6" runat="server" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button6_Click" style="z-index: 1; left: 1111px; top: 384px; position: absolute; width: 82px; height: 34px" Text="REMOVE" Visible="False" />
        <asp:Label ID="Label19" runat="server" ForeColor="#919191" style="z-index: 1; left: 672px; top: 404px; position: absolute; height: 25px; width: 94px" Text="Profile Picture"></asp:Label>
    
            
           
        

        
    
            <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Rockwell Extra Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="#0033CC" style="z-index: 1; left: 439px; top: 22px; position: absolute; width: 411px; height: 60px; text-align: center;" Text="BookPicker.com"></asp:Label>
    
        <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Names="Monotype Corsiva" Font-Size="X-Large" style="z-index: 1; left: 346px; top: 208px; position: absolute; height: 26px; width: 115px"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 1035px; top: 301px; position: absolute" />
        <asp:Button ID="Button5" runat="server" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button5_Click" style="z-index: 1; left: 1011px; top: 384px; position: absolute; height: 34px; width: 82px" Text="UPDATE" />
        <asp:Image ID="Image1" runat="server" style="z-index: 1; left: 815px; top: 307px; position: absolute; height: 192px; width: 175px" ImageUrl="~/ProfilePictures/Default.png" />
        <asp:Label ID="Label3" runat="server" style="z-index: 1;margin-left:0px; left: 8px; top: 260px; width:94%; position: absolute; height: 22px;padding-left:5%" Text="Personal Information" BackColor="#E4C2C9" Font-Bold="False" Font-Names="Eras Demi ITC" ForeColor="#6F6FFF"></asp:Label>
    
        <asp:Label ID="Label4" runat="server" ForeColor="#919191" style="z-index: 1; left: 75px; top: 310px; position: absolute; height: 26px; width: 92px" Text="First Name"></asp:Label>
        <asp:Label ID="Label5" runat="server" ForeColor="#919191" style="z-index: 1; left: 75px; top: 360px; position: absolute; height: 26px; width: 92px" Text="Second Name"></asp:Label>
        <asp:Label ID="Label6" runat="server" ForeColor="#919191" style="z-index: 1; left: 75px; top: 410px; position: absolute; height: 26px; width: 92px; right: 1120px;" Text="Sex"></asp:Label>
        <asp:Label ID="Label7" runat="server" ForeColor="#919191" style="z-index: 1; left: 75px; top: 460px; position: absolute; height: 26px; width: 92px" Text="Age"></asp:Label>


        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 216px; top: 131px; position: absolute;height: 33px; width: 71px; right: 857px;" Text="Home" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 1159px; top: 131px; position: absolute; height: 33px; width: 71px;" Text="Log Out" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button2_Click" />

        <asp:Label ID="Label17" runat="server" ForeColor="Blue" style="z-index: 1; left: 552px; top: 215px; position: absolute; width: 187px; right: 573px;" Text="Enter new Password:" Font-Names="Monotype Corsiva" Font-Size="X-Large" Visible="False"></asp:Label>

        <asp:Label ID="Label13" runat="server" style="z-index: 1;margin-left:0px; left: 8px; top: 537px; width:94%; position: absolute; height: 22px;padding-left:5%" Text="Identification Details" BackColor="#E4C2C9" Font-Bold="False" Font-Names="Eras Demi ITC" ForeColor="#6F6FFF" BorderStyle="None"></asp:Label>

        <asp:Label ID="Label15" runat="server" ForeColor="#919191" style="z-index: 1; left: 75px; top: 606px; position: absolute; height: 26px; width: 92px" Text="Aadhar No."></asp:Label>
        <asp:Label ID="Label16" runat="server" ForeColor="#919191" style="z-index: 1; left: 75px; top: 656px; position: absolute; height: 26px; width: 127px" Text="Date  Of Joining"></asp:Label>


        <asp:Label ID="Label9" runat="server" style="z-index: 1;margin-left:0px; left: 8px; top: 716px; width:94%; position: absolute; height: 22px;padding-left:5%" Text="Contact Details" BackColor="#E4C2C9" Font-Bold="False" Font-Names="Eras Demi ITC" ForeColor="#6F6FFF"></asp:Label>
        
        <asp:Label ID="Label10" runat="server" ForeColor="#919191" style="z-index: 1; left: 77px; top: 771px; position: absolute; height: 15px; width: 44px" Text="Address"></asp:Label>
        <asp:Label ID="Label11" runat="server" ForeColor="#919191" style="z-index: 1; left: 75px; top: 816px; position: absolute; height: 26px; width: 92px" Text="Phone Number"></asp:Label>
        <asp:Label ID="Label12" runat="server" ForeColor="#919191" style="z-index: 1; left: 75px; top: 866px; position: absolute; height: 26px; width: 92px" Text="Email ID"></asp:Label>
        <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 457px; top: 978px;margin-bottom :30px; position: absolute; width: 92px; height: 32px;" Text="Edit Details" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button3_Click"  />


        <asp:TextBox ID="TextBox17" runat="server" style="z-index: 1; left: 272px; top: 310px; position: absolute" Text="first name" BorderStyle="None" Font-Names="Bookman Old Style" ForeColor="#004A25" Font-Size="Large" ReadOnly="True"></asp:TextBox>
        <asp:Button ID="Button4" runat="server" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button4_Click" style="z-index: 1; left: 458px; top: 979px; position: absolute; width: 90px; height: 31px" Text="Update" Visible="False" />
        <asp:TextBox ID="TextBox18" runat="server" style="z-index: 1; left: 272px; top: 360px; position: absolute" Text="last name" BorderStyle="None" Font-Names="Bookman Old Style" ForeColor="#004A25" Font-Size="Large" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox19" runat="server" style="z-index: 1; left: 272px; top: 410px; position: absolute" Text="sex" BorderStyle="None" Font-Names="Bookman Old Style" ForeColor="#004A25" Font-Size="Large" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox20" runat="server" style="z-index: 1; left: 272px; top: 460px; position: absolute" Text="age" BorderStyle="None" Font-Names="Bookman Old Style" ForeColor="#004A25" Font-Size="Large" ReadOnly="True"></asp:TextBox>
        
        <asp:TextBox ID="TextBox22" runat="server" style="z-index: 1; left: 272px; top:606px; position: absolute" Text="aadhar no." BorderStyle="None" Font-Names="Bookman Old Style" ForeColor="#004A25" Font-Size="Large" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox23" runat="server" style="z-index: 1; left: 272px; top: 656px; position: absolute" Text="date of joining" BorderStyle="None" Font-Names="Bookman Old Style" ForeColor="#004A25" Font-Size="Large" ReadOnly="True"></asp:TextBox>
    
        <asp:TextBox ID="TextBox24" runat="server" style="z-index: 1; left: 272px; top: 766px; position: absolute" BorderStyle="None" Font-Names="Bookman Old Style" ForeColor="#004A25" Font-Size="Large" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
        <asp:TextBox ID="TextBox25" runat="server" style="z-index: 1; left: 272px; top: 816px; position: absolute" Text="phone no." BorderStyle="None" Font-Names="Bookman Old Style" ForeColor="#004A25" Font-Size="Large" ReadOnly="True" TextMode="Number"></asp:TextBox>
        <asp:TextBox ID="TextBox26" runat="server" style="z-index: 1; left: 272px; top: 866px; position: absolute" Text="email id" BorderStyle="None" Font-Names="Bookman Old Style" ForeColor="#004A25" Font-Size="Large" ReadOnly="True"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox17" ErrorMessage="*REQUIRED" ForeColor="Red" style="z-index: 1; left: 463px; top: 315px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox18" ErrorMessage="*REQUIRED" ForeColor="Red" style="z-index: 1; left: 463px; top: 363px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox26" ErrorMessage="*REQUIRED" ForeColor="Red" style="z-index: 1; left: 565px; top: 870px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox26" ErrorMessage="*ENTER CORRECT MAIL" ForeColor="Red" style="z-index: 1; left: 565px; top: 870px; position: absolute" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        
        <asp:Label ID="Label18" runat="server" ForeColor="Red" style="z-index: 1; left: 1003px; top: 433px; position: absolute; height: 38px; width: 223px"></asp:Label>
        
        
    
        <img src="images.jpg" style="width: 181px; height: 120px; z-index: 1; left: 26px; top: 8px; position: absolute;" /></div>
        
        
        
        <asp:TextBox ID="TextBox27" runat="server" BorderStyle="None" style="z-index: 1; left: 772px; top: 217px; position: absolute; height: 23px; width: 140px;" Visible="False" BackColor="#FFFF99" TextMode="Password"></asp:TextBox>
        
        
        
        <p>
            &nbsp;</p>
        <p>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 830px; top: 131px; position: absolute;height: 33px; width: 94px;" Text="Hi user!!" Font-Names="Segoe UI Semilight"></asp:Label>

            <asp:Button ID="Button7" runat="server" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button7_Click" style="z-index: 1; left: 986px; top: 131px; position: absolute; height: 33px" Text="ISSUE DETAILS" />

        </p>
        
        
        
    </form>
</body>
</html>
