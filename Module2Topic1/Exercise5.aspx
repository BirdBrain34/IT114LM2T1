<%@ Page Language="C#" CodeBehind="~/Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise4" MasterPageFile="~/Exercise5.Master" %>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Exercise 5 Reflections:</h1>
    <p>1. How would you compare plain HTML to ASP.NET WebForms?</p>
    <p> Ans- HTML is more onto light interactivty when it comes to the usage of the website where as ASP.NET is more into the having dynamic web processing on the server side.<br/>
        In short HTML is easier to learn but limited interactions and ASP.NET though harder to learn can be a game changer for dynamic style of web designing.
    </p>
    <p>2. The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript?<br/>
        Provide examples.</p>
    <p> Ans- They both share the idea that they are on the server-side to use logic in order to create and manipulate data to create a good user experience. An example of this <br />
        An example of this can be to create functionality using Javascript or to create validations on forms that require the correct input on the Codebehind.
    </p>
    <p>3. Explain what post backs are.<p/>
    <p> Ans- Post backs is the process of sending a page to be processed by the server and returns the updated page to the user. An example of this is sending your username and <br />
        password to the page, once it is verified and no validations were proc it will send that data to the server to then be processed elsewhere like a database.  
    </p>
</asp:Content>
<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>
