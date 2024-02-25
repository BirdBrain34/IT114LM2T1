<%@ Page Language="C#" CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" %>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<script runat="server">
    private List<int> playedSongs = new List<int>();
    private string[] songTexts = {
    "Playing Lil-Yachty (SUS Remix)",
    "Playing Shoji Meguro-Changing Seasons",
    "Playing Siames-The Wolf"
    };
    private int songIndex = 0;
    private void Play_Click(object sender, EventArgs e)
    {
        List<int> remainingSongs = Enumerable.Range(0, songTexts.Length)
            .Except(playedSongs)
            .ToList();
        if (remainingSongs.Count == 0)
        {
            playedSongs.Clear();
            remainingSongs = Enumerable.Range(0, songTexts.Length).ToList();
        }

        int randomIndex = new Random().Next(0, remainingSongs.Count);
        songIndex = remainingSongs[randomIndex];
        playedSongs.Add(songIndex);

        changeTxt.InnerText = songTexts[songIndex];
        Label1.Text = $"Now playing: {songTexts[songIndex]}";

        switch (changeTxt.InnerText)
        {
            case "Playing Lil-Yachty (SUS Remix)":
                SongTM.ImageUrl = "https://i.ytimg.com/vi/Bh3iLOUG7DI/maxresdefault.jpg";
                break;
            case "Playing Shoji Meguro-Changing Seasons":
                SongTM.ImageUrl = "https://i.ytimg.com/vi/y55K7Dogn5g/maxresdefault.jpg";
                break;
            case "Playing Siames-The Wolf":
                SongTM.ImageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ087_CGK24qIBvyWaiL5B9lHdX9KMYLpcrE9G47L4XOkm01_C36Gk0JyerDYbRqlnVI-Y&usqp=CAU";
                break;
        }
    }
    private void Prev_Click(object sender, EventArgs e)
    {
        if (playedSongs.Count > 0)
        {
            playedSongs.RemoveAt(playedSongs.Count - 1);
            if (playedSongs.Count > 0)
            {
                songIndex = playedSongs[playedSongs.Count - 1];
            }
            else
            {
                songIndex = 0;
            }

            changeTxt.InnerText = songTexts[songIndex];
            Label1.Text = $"Selecting Song: {songTexts[songIndex]}";
        }
    }   
    private void Next_Click(object sender, EventArgs e)
    {
        if (playedSongs.Count > 0)
        {
            playedSongs.RemoveAt(playedSongs.Count - 1);
            if (playedSongs.Count > 0)
            {
                songIndex = playedSongs[playedSongs.Count - 1];
            }
            else
            {
                songIndex = 0;
            }

            changeTxt.InnerText = songTexts[songIndex];
            Label1.Text = $"Selecting Song: {songTexts[songIndex]}";
        }
    }
</script>
<html>
<head>
    <title>Malayan Music Player</title>
</head>
<body>
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
    <form runat="server" style="text-align:center;">
        <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>
        <div>
            <asp:Label ID="Label1" runat="server" Text="No song selected..."></asp:Label>
            <br />  <br />
        </div>
        <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%>
        <div>
            <asp:Image ID="SongTM" runat="server" height="200px" width="200px" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtS8tbwrH0QZnij0MEREsBxVZbdNIp9OYCIA&usqp=CAU"/>
        </div>
        <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>
        <div>
            <asp:Button ID="Prev" runat="server" onclick="Prev_Click" Text="Prev"/>
            <asp:Button ID="Play" runat="server" onclick="Play_Click" Text="Play"/>
            <asp:Button ID="Next" runat="server" onclick="Next_Click" Text="Next"/>

        </div>
        <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_first_example.htm#:~:text=convertoupper --%>
        <span id="changeTxt" runat="server">No song playing...</span>
        <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
        <div>
            <%=DateTime.Now.ToString("yyyy-MM-dd") %>
        </div>
    </form>
</body>
</html>
