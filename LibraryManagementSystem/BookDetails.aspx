<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="BookDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="Book_icon.png"/>
    <title>Update Book Details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 820px; width: 1322px">
    
            
           
        

        
    
        <img src="images.jpg" style="width: 218px; height: 141px; z-index: 1; left: 19px; top: 137px; position: absolute;" /><asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Rockwell Extra Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="#0033CC" style="z-index: 1; left: 463px; top: 2px; position: absolute; width: 411px; height: 60px; text-align: center;" Text="BookPicker.com"></asp:Label>
    
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="*MAXIMUM QUANTITY EXCEEDED (&lt;50)" ForeColor="Red" style="z-index: 1; left: 802px; top: 305px; position: absolute" OnServerValidate="CustomValidator1_ServerValidate1"></asp:CustomValidator>
    
        <asp:Label ID="Label1" runat="server" BackColor="#FF99FF" Font-Names="Berlin Sans FB" Font-Size="X-Large" ForeColor="#FF3300" style="z-index: 1; left: 17px; top: 58px; position: absolute; height: 27px; width: 1306px; text-align: center" Text="UPDATE BOOK DETAILS:"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 257px; top: 166px; position: absolute; width: 175px; text-align: center" Text="ACCESSION NUMBER:"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 275px; top: 199px; position: absolute; width: 142px; text-align: center" Text="TITLE:"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 295px; top: 233px; position: absolute; width: 82px; text-align: center" Text="AUTHOR:"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 259px; top: 270px; position: absolute; width: 179px" Text="YEAR OF PUBLISHING:"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 251px; top: 304px; position: absolute; width: 181px" Text="QUANTITY AVAILABLE:"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 317px; top: 338px; position: absolute" Text="PAGES:"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 300px; top: 375px; position: absolute" Text="PUBLISHER:"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 258px; top: 414px; position: absolute" Text="E-BOOK AVAILABLE?"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 292px; top: 454px; position: absolute" Text="E-BOOK URL:"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 295px; top: 496px; position: absolute" Text="CATEGORY:"></asp:Label>
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 271px; top: 537px; position: absolute" Text="SUB-CATEGORY:"></asp:Label>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 285px; top: 577px; position: absolute" Text="BOOK-COVER:"></asp:Label>
        <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 315px; top: 709px; position: absolute; width: 92px" Text="BOOK TYPE:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 464px; top: 167px; position: absolute; width: 271px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 465px; top: 198px; position: absolute; width: 268px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 468px; top: 233px; position: absolute; width: 268px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 465px; top: 268px; position: absolute; width: 271px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 463px; top: 306px; position: absolute; width: 278px" TextMode="Number"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" OnClick="Button1_Click" style="z-index: 1; left: 662px; top: 765px; position: absolute; height: 43px; width: 133px" Text="UPDATE" />
        <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 244px; top: 24px; position: absolute; width: 99px; height: 28px"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 462px; top: 338px; position: absolute; width: 277px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 464px; top: 374px; position: absolute; width: 276px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 466px; top: 413px; position: absolute; width: 150px">
        </asp:DropDownList>
        <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 466px; top: 453px; position: absolute; width: 280px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="*REQUIRED" ForeColor="Red" style="z-index: 1; left: 802px; top: 305px; position: absolute"></asp:RequiredFieldValidator>
    
        <asp:TextBox ID="TextBox8" runat="server" BorderStyle="None" ReadOnly="True" style="z-index: 1; left: 467px; top: 536px; position: absolute; width: 189px"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server" BorderStyle="None" ReadOnly="True" style="z-index: 1; left: 466px; top: 495px; position: absolute; width: 192px"></asp:TextBox>
        <asp:Label ID="Label16" runat="server" style="z-index: 1; left: 735px; top: 416px; position: absolute; height: 17px; width: 123px"></asp:Label>
        <asp:Label ID="Label17" runat="server" style="z-index: 1; left: 771px; top: 454px; position: absolute; width: 234px; height: 21px"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" style="z-index: 1; left: 1061px; top: 456px; position: absolute">[HyperLink1]</asp:HyperLink>
        <asp:Image ID="Image1" runat="server" style="z-index: 1; left: 480px; top: 576px; position: absolute; height: 113px; width: 131px" />
    
        <asp:Label ID="Label18" runat="server" style="z-index: 1; left: 479px; top: 710px; position: absolute; width: 128px"></asp:Label>
    
    </div>
    </form>
</body>
</html>
