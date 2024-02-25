<asp:EntityDataSource runat="server"></asp:EntityDataSource>

<%@ Page Language="C#" CodeBehind="~/Exercise2.aspx.cs" Inherits="Module1Exercise1.Exercise2" %>

<%-- Exercise 2: Exploring ASP.NET Form Controls --%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<script runat="server">
    private void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ticketVal = DropDownList1.DataValueField;
    }
    private void Check_Clicked(object sender, EventArgs e)
    {
        string favVal = checkboxlist1.SelectedValue;
    }
</script>
<html>
<head>
    <title>Malayan Music Festival Registration</title>
</head>
<body>
    <h1>Malayan Music Festival Registration</h1>
    <form runat="server">
        <%-- TODO 3.1 Create two text boxes for the first name and last name --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Text%20Boxes%20and%20Labels --%>
        <div>
            <asp:Label ID="firstBox">Firstname:</asp:Label>
            <asp:TextBox ID="first_name" runat="server" ></asp:TextBox>
            <br />
            <asp:Label ID="lastbox">Lastname:</asp:Label>
            <asp:TextBox ID="last_name" runat="server" ></asp:TextBox>
        </div>
        <%-- Todo 3.2 Create a text box for inputting the age of the user. Make sure to set the TextMode to the proper value--%>
        <div>
            <asp:Label ID="ageTxt">Age:</asp:Label>
            <asp:TextBox ID="ageBox" runat="server" TextMode ="Number"></asp:TextBox>
        </div>
        <%-- TODO 3.3 Create a DropDownList for the ticket type. It must have the following options: Starter, General Admissions, Gold, VIP --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=DropDownList --%>
        <div>
            <asp:Label ID="ticketTxt">Ticket type:</asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="Starter"> Starter </asp:ListItem>
                <asp:ListItem Value="General"> General </asp:ListItem>
                <asp:ListItem Value="Admissions"> Admissions </asp:ListItem>
                <asp:ListItem Value="Gold"> Gold </asp:ListItem>
                <asp:ListItem Value="VIP"> VIP </asp:ListItem>
            </asp:DropDownList>
        </div>
        <%-- TODO 3.4 Create a Radio Button List for selecing which days they are planning to attend. It must have following options: Day 1 Only, Day 2 Only, Both Day 1 and 2--%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.radiobuttonlist?view=netframework-4.8.1#:~:text=RadioButtonList%20id=%22RadioButtonList1%22 --%>
        <div>
            <asp:Label ID="schedTxt">Day to attend:</asp:Label>
            <asp:RadioButtonList id="RadioButtonList1" runat="server">
                <asp:ListItem>Day 1 Only</asp:ListItem>
                <asp:ListItem>Day 2 Only</asp:ListItem>
                <asp:ListItem>Both Day 1 and 2</asp:ListItem>
         </asp:RadioButtonList>
        </div>
        <%-- TODO 3.5 Create a Checkbox List for the performances they are planning to attend. List down your favorite arists for the options. --%>
        <%-- It must look something like --%>
        <%-- Which performances are you planning to attend? --%>
        <%-- <Artist Name 1> - [ ] --%>
        <%-- <Artist Name 2> - [x] --%>
        <%-- <Artist Name 3> - [ ] --%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.checkboxlist?view=netframework-4.8.1#:~:text=CheckBoxList%20id=%22checkboxlist1%22 --%>
        <div>
            <asp:Label ID="favArtistTxt">List down your favorite artists:</asp:Label>
            <asp:CheckBoxList id="checkboxlist1" 
           AutoPostBack="True"
           CellPadding="5"
           CellSpacing="5"
           RepeatColumns="2"
           RepeatDirection="Vertical"
           RepeatLayout="Flow"
           TextAlign="Right"
           OnSelectedIndexChanged="Check_Clicked"
           runat="server">
 
         <asp:ListItem>Siames</asp:ListItem>
         <asp:ListItem>Teminite</asp:ListItem>
         <asp:ListItem>Panda Eyes</asp:ListItem>
         <asp:ListItem>Fatrat</asp:ListItem>
         <asp:ListItem>DM Dokuro</asp:ListItem>
         <asp:ListItem>Daisuke Ishiwatari</asp:ListItem>
 
      </asp:CheckBoxList>
        </div>
        <%-- TODO 3.6 Create a FileUpload for their proof of payment. It must only accept JPG and PNG files. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_file_uploading.htm#:~:text=%3Ch3%3E%20File%20Upload:%3C/h3%3E --%>
        <%-- Bonus --%>
    </form>
</body>
</html>
