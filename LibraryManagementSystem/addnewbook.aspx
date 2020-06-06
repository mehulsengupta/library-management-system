<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addnewbook.aspx.cs" Inherits="addnewbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="Book_icon.png"/>
    <title>Add New Book</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 684px; width: 1287px">
    
            
           
        

        
    
            <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Rockwell Extra Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="#0033CC" style="z-index: 1; left: 441px; top: 9px; position: absolute; width: 411px; height: 60px; text-align: center; margin-bottom: 0px;" Text="BookPicker.com"></asp:Label>
    
        <asp:Label ID="Label21" runat="server" style="z-index: 1; left: 266px; top: 28px; position: absolute; width: 125px"></asp:Label>
    
        <asp:Label ID="Label1" runat="server" BackColor="#FF99FF" Font-Names="Berlin Sans FB" Font-Size="X-Large" ForeColor="#FF3300" style="z-index: 1; left: 17px; top: 58px; position: absolute; height: 27px; width: 1269px; text-align: center" Text="NEW BOOK DETAILS:"></asp:Label>
        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="*VIOLATES QUANTITY RANGE (&lt;50)" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate" style="z-index: 1; left: 854px; top: 305px; position: absolute"></asp:CustomValidator>
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
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 259px; top: 577px; position: absolute" Text="BOOK-COVER URL:"></asp:Label>
        <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 260px; top: 620px; position: absolute; width: 121px" Text="BOOK TYPE:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 464px; top: 167px; position: absolute; width: 271px; right: 544px;"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 465px; top: 198px; position: absolute; width: 268px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 468px; top: 233px; position: absolute; width: 268px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 465px; top: 268px; position: absolute; width: 271px" TextMode="Number"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 463px; top: 306px; position: absolute; width: 278px" TextMode="Number"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 462px; top: 338px; position: absolute; width: 277px" TextMode="Number"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 464px; top: 374px; position: absolute; width: 276px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 466px; top: 413px; position: absolute; width: 150px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 466px; top: 453px; position: absolute; width: 280px" />
        <asp:DropDownList ID="DropDownList2" runat="server" style="z-index: 1; left: 468px; top: 496px; position: absolute; width: 143px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*REQUIRED" ForeColor="Red" style="z-index: 1; left: 853px; top: 169px; position: absolute"></asp:RequiredFieldValidator>
        <asp:DropDownList ID="DropDownList3" runat="server" style="z-index: 1; left: 471px; top: 536px; position: absolute; width: 133px">
        </asp:DropDownList>
        <asp:FileUpload ID="FileUpload2" runat="server" style="z-index: 1; left: 472px; top: 576px; position: absolute; width: 278px" />
        <asp:DropDownList ID="DropDownList4" runat="server" style="z-index: 1; left: 474px; top: 619px; position: absolute; width: 131px">
        </asp:DropDownList>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*REQUIRED" ForeColor="Red" style="z-index: 1; left: 853px; top: 200px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*REQUIRED" ForeColor="Red" style="z-index: 1; left: 854px; top: 235px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*REQUIRED" ForeColor="Red" style="z-index: 1; left: 854px; top: 271px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*REQUIRED" ForeColor="Red" style="z-index: 1; left: 854px; top: 305px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*REQUIRED" ForeColor="Red" style="z-index: 1; left: 855px; top: 339px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*REQUIRED" ForeColor="Red" style="z-index: 1; left: 855px; top: 376px; position: absolute"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="*ENTER CORRECT YEAR" style="z-index: 1; left: 854px; top: 271px; position: absolute" ControlToValidate="TextBox4" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        <asp:Label ID="Label15" runat="server" ForeColor="Red" style="z-index: 1; left: 861px; top: 497px; position: absolute; width: 112px" Visible="False"></asp:Label>
        <asp:Label ID="Label16" runat="server" ForeColor="Red" style="z-index: 1; left: 861px; top: 621px; position: absolute; width: 133px" Visible="False"></asp:Label>
        <asp:Label ID="Label17" runat="server" ForeColor="Red" style="z-index: 1; left: 859px; top: 578px; position: absolute; width: 121px" Visible="False"></asp:Label>
        <asp:Label ID="Label18" runat="server" ForeColor="Red" style="z-index: 1; left: 862px; top: 415px; position: absolute; width: 194px" Visible="False"></asp:Label>
        <asp:Label ID="Label19" runat="server" ForeColor="Red" style="z-index: 1; left: 860px; top: 538px; position: absolute; width: 127px" Visible="False"></asp:Label>
        <asp:Label ID="Label20" runat="server" ForeColor="Red" style="z-index: 1; left: 862px; top: 455px; position: absolute; width: 108px" Visible="False"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 513px; top: 649px; position: absolute; width: 144px; height: 38px;" Text="ADD" BackColor="#FF5050" BorderStyle="None" ForeColor="#FFFFCC" />
    
        
    
        <img src="images.jpg" style="width: 218px; height: 141px; z-index: 1; left: 17px; top: 119px; position: absolute;" /></div>
    </form>
</body>
</html>
