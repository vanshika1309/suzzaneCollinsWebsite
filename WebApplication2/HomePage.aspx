<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Home.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="box-container">


        <div id="box1" class="scroll">
            <br />
            <br />
            <div class="transbox"></div>
            <h3 class="ontop">
                <input type="image" src="books.png" height="280" /><br />
                <input class="button" type="button" id="like1" value="Like"
                    onclick="return changeText('like1');" />
            </h3>
        </div>

        <div id="box2" class="scroll">
            <br />
            <br />
            <div class="transbox"></div>
            <h3 class="ontop">
                <input type="image" src="book2.jpg" height="250" /><br />
                <br />
                <input class="button" type="button" id="like2" value="Like"
                    onclick="return changeText('like2');" />
            </h3>
        </div>

        <div id="box3" class="scroll">
            <br />
            <br />
            <div class="transbox"></div>
            <h3 class="ontop">
                <input type="image" src="book3.png" height="250" /><br />
                <br />
                <input class="button" type="button" id="like3" value="Like"
                    onclick="return changeText('like3');" />
            </h3>
        </div>

        <div id="box4" class="scroll">
            <br />
            <br />
            <div class="transbox"></div>
            <h3 class="ontop">
                <input type="image" src="book4.jpg" height="250" /><br />
                <br />
                
                <input class="button" type="button" id="like4" value="Like"
                    onclick="return changeText('like4');"/>
                
            </h3>
        </div>

    </div>
    <script>
        $(document).ready(function () {
            $("button").click(function () {
                button.animate({ width: '100px' }, "slow");
            });
        });
        function changeText(submitId) {
            var submit = document.getElementById(submitId);
            submit.value = 'Liked';
            return false;
        };
    </script>
    <br>
    <br />


    <div class="dotmargin" style="text-align: center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
        <span class="dot" onclick="currentSlide(4)"></span>
    </div>
    <script src="HomePage.js"></script>


</asp:Content>
