<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ContactAuthor.aspx.cs" Inherits="WebApplication2.ContactAuthor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Contact.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <fieldset>
        <asp:FormView ID="FVComment" runat="server"
            DataKeyNames="commentID" RenderOuterTable="False"
            ItemType="WebApplication2.Models.Comment"
            SelectMethod="FVBook_GetItem"
            UpdateMethod="FVBook_UpdateItem"
            InsertMethod="FVBook_InsertItem"
            DeleteMethod="FVBook_DeleteItem">

            <EditItemTemplate>
                <div class="transbox">
                    <h4 class="main">
                        <img src="header.png" height="100">
                        <br />
                        SEND SUZZANE A LETTER
                    </h4>
                    <br />
                    <h5 class="main">Scholastic Media<br />
                        557 Broadway<br />
                        New York,
                        <br />
                        NY 10012<br />
                        USA<br />
                    </h5>

                    <br />
                    <br />
                    <div class="offset-2 col-md-8">
                        <div class="form-group row col-md-8">
                            <label for="TBFirstName">First Name:</label>
                            <asp:TextBox ID="TBFirstName" ClientIDMode="Static" required=""
                                CssClass="form-control"
                                runat="server" Text='<%# BindItem.firstName %>' />
                        </div>
                        <div class="form-group row col-md-8">
                            <label for="TBLastName">Last Name:</label>
                            <asp:TextBox ID="TBLastName" ClientIDMode="Static" required=""
                                CssClass="form-control"
                                runat="server" Text='<%# BindItem.lastName %>' />
                        </div>
                        <div class="form-group row col-md-8">
                            <label for="TBEmail">Email:</label>
                            <asp:TextBox ID="TBEmail" ClientIDMode="Static" required=""
                                CssClass="form-control" placeholder="example@abc.com. . ."
                                runat="server" Text='<%# BindItem.email %>' />
                        </div>
                        <div class="form-group row col-md-8">
                            <label for="TBMessage">Message: </label>
                            <asp:TextBox ID="TBMessage" ClientIDMode="Static" TextMode="Multiline"
                                CssClass="form-control"
                                required="" minlength="10" MaxLength="5000" Rows="10" runat="server"
                                Text='<%# BindItem.comment %>' />
                        </div>
                        <br />
                        <div class="form-group">
                            <asp:Button ID="UpdateButton" CssClass="btn btn-success"
                                runat="server" CausesValidation="True" CommandName="Update"
                                Text="Update" />
                            <asp:Button ID="UpdateCancelButton" formnovalidate=""
                                CssClass="btn btn-warning" runat="server" CausesValidation="False"
                                CommandName="Cancel" Text="Cancel" />

                        </div>
                    </div>
                </div>
            </EditItemTemplate>

            <InsertItemTemplate>
                <br />
                <br />

                <div id="notsent" class="transbox" visible="true" runat="server">

                    <h4 class="main">
                        <img src="header.png" height="100">
                        <br />
                        SEND SUZZANE A LETTER
                    </h4>
                    <br />
                    <h5 class="main">Scholastic Media<br />
                        557 Broadway<br />
                        New York,
                        <br />
                        NY 10012<br />
                        USA<br />
                    </h5>

                    <br />
                    <br />

                    <div class="offset-2 col-md-8">
                        <div class="form-group row col-md-8">
                            <label for="TBFirstName">First Name:</label>
                            <asp:TextBox ID="TBFirstName" ClientIDMode="Static" required=""
                                CssClass="form-control"
                                runat="server" Text='<%# BindItem.firstName %>' />
                        </div>

                        <div class="form-group row col-md-8">
                            <label for="TBLastName">Last Name:</label>
                            <asp:TextBox ID="TBLastName" ClientIDMode="Static" required=""
                                CssClass="form-control"
                                runat="server" Text='<%# BindItem.lastName %>' />
                        </div>

                        <div class="form-group row col-md-8">
                            <label for="TBEmail">Email:</label>
                            <asp:TextBox ID="TBEmail" ClientIDMode="Static" required=""
                                CssClass="form-control" placeholder="example@abc.com. . ."
                                runat="server" Text='<%# BindItem.email %>' />
                        </div>

                        <div class="form-group row col-md-8">
                            <label for="TBMessage">Message: </label>
                            <asp:TextBox ID="TBMessage" ClientIDMode="Static" TextMode="Multiline"
                                CssClass="form-control"
                                required="" minlength="10" MaxLength="5000" Rows="10" runat="server"
                                Text='<%# BindItem.comment %>' />
                        </div>

                        <div class="form-group">
                            <asp:Button ID="InsertButton" CssClass="btn btn-success" runat="server"
                                CausesValidation="True" CommandName="Insert" Text="Insert" />

                            <button id="ClearButton" class="btn btn-warning"
                                causesvalidation="False" type="reset">
                                Clear</button>
                        </div>
                        <script>
                            document.getElementById("ClearButton").addEventListener("click", myFunction);
                            function myFunction() {
                                alert("You have cleared your form");
                            }

                            $(document).ready(function () {
                                $("#ClearButton").mouseover(function () {
                                    $("#ClearButton").animate({ height: "45px" });
                                });
                                $("#ClearButton").mouseout(function () {
                                    $("#ClearButton").animate({ height: "40px" });
                                });

                            });


                        </script>
                    </div>
                </div>
            </InsertItemTemplate>

            <ItemTemplate>
                <div class="transbox">
                    <h4 class="main">
                        <img src="header.png" height="100">
                        <br />
                        THANK YOU FOR YOUR MESSAGE
                    </h4>
                    <br />
                    <h5 class="main">Scholastic Media<br />
                        557 Broadway<br />
                        New York,
                        <br />
                        NY 10012<br />
                        USA<br />
                    </h5>

                    <br />
                    <br />

                    <legend>Message # : <%# Item.commentID.ToString("X4") %></legend>

                    <div class="form-group">
                        <label>Comment ID:</label>
                        <%# Item.commentID %>
                    </div>

                    <div class="form-group">
                        <label>First Name:</label>
                        <%# Item.firstName %>
                    </div>

                    <div class="form-group">
                        <label>Last Name:</label>
                        <%# Item.lastName %>
                    </div>

                    <div class="form-group">
                        <label>Email:</label>
                        <%# Item.email %>
                    </div>

                    <div class="form-group">
                        <label>Message:</label>
                        <%# Item.comment %>
                    </div>

                    <div class="form-group">
                        <asp:LinkButton ID="EditButton" CssClass="btn btn-secondary" runat="server"
                            CausesValidation="False" CommandName="Edit" Text="Edit" />
                        <asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" runat="server"
                            CausesValidation="False" CommandName="Delete" Text="Delete" />
                        <asp:LinkButton ID="NewButton" CssClass="btn btn-success" runat="server"
                            CausesValidation="False" CommandName="New" Text="New" />
                    </div>
                </div>
            </ItemTemplate>
            <EmptyDataTemplate>

                <div class="smalltransbox">
                    <h4 class="main">
                        <img src="header.png" height="100">
                        <br />

                    </h4>
                    <br />
                    <h5 class="main">Scholastic Media<br />
                        557 Broadway<br />
                        New York,
                        <br />
                        NY 10012<br />
                        USA<br />
                    </h5>
                    <br />
                    <br />

                    <div class="Link" id="Link">
                        <asp:LinkButton runat="server" CommandName="New" ID="add">
                            CLICK TO SEND SUZZANE A LETTER
                        </asp:LinkButton>


                    </div>
                    <script>
                        //Referencing: https://stackoverflow.com/questions/10462839/how-to-display-a-confirmation-dialog-when-clicking-an-a-link
                        var elems = document.getElementsByClassName('Link');
                        var confirmIt = function (e) {
                            if (!confirm('Are you sure?')) e.preventDefault();
                        };
                        for (var i = 0, l = elems.length; i < l; i++) {
                            elems[i].addEventListener('click', confirmIt, false);
                        }
                    </script>

                    <br />
                    <br />
            </EmptyDataTemplate>
        </asp:FormView>

    </fieldset>



</asp:Content>
