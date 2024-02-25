<%@ Page Language="C#" CodeBehind="~/Exercise3.aspx.cs"  Inherits="Module1Exercise1.Exercise3" %>

<%-- Exercise 3: Adding Logic to the WebPage --%>
<!DOCTYPE html>
<script runat="server">
    private void calcu_grades(object sender, EventArgs e)
    {
        float calc_grade = float.Parse(percentageGrade.Text);
        if (calc_grade >= 96)
        {
            finalGrade.Text = "You have a final grade of 1.00";
            ScriptManager.RegisterStartupScript(this, GetType(), "CongratulationsScript", "alert('Congratulations you have perfected the course.');", true);
        }
        else if (calc_grade >= 91.5 && calc_grade <= 95.9)
        {
            finalGrade.Text = "You have a final grade of 1.25";
        }
        else if (calc_grade >= 87 && calc_grade <= 91.4)
        {
            finalGrade.Text = "You have a final grade of 1.50";
        }
        else if (calc_grade >= 82.5 && calc_grade <= 86.9)
        {
            finalGrade.Text = "You have a final grade of 1.75";
        }
        else if (calc_grade >= 78 && calc_grade <= 82.4)
        {
            finalGrade.Text = "You have a final grade of 2.00";
        }
        else if (calc_grade >= 73.5 && calc_grade <= 77.9)
        {
            finalGrade.Text = "You have a final grade of 2.25";
        }
        else if (calc_grade >= 69 && calc_grade <= 73.4)
        {
            finalGrade.Text = "You have a final grade of 2.50";
        }
        else if (calc_grade >= 64.5 && calc_grade <= 68.9)
        {
            finalGrade.Text = "You have a final grade of 2.75";
        }
        else if (calc_grade >= 60 && calc_grade <= 64.4)
        {
            finalGrade.Text = "You have a final grade of 2.75";
        }
        else if (calc_grade < 60)
        {
            finalGrade.Text = "You have a final grade of 5 and failed the course :(";
        }
    }
</script>
<html>
<head>
    <title></title>
</head>
<body>
    <h1>What's my final grade?</h1>
    <form runat="server">
        <asp:Label runat="server" Text="Enter percentage value of your grade:"></asp:Label>
        <asp:TextBox runat="server" ID="percentageGrade"/>

        <%-- TODO 3.1: Add an event handler for the button below --%>
        <%-- When the button is clicked it should display your equivalent numerial grade in the label with the id "finalGrade" --%>
        <%-- TODO 3.2 Add additional logic to the button such that when the grade of the user is 1.00 it displays a JavaScript alert with a congulatory message --%>
        <asp:Button Text="Calculate" runat="server" onclick="calcu_grades"/>
        <br />
        <br />
        <asp:Label runat="server" Text="Final Grade: "></asp:Label>
        <asp:Label ID="finalGrade" runat="server" Text=""></asp:Label>
        
    </form>
</body>
</html>
