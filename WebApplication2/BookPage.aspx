<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="BookPage.aspx.cs" Inherits="WebApplication2.BookPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="Book.css" rel="stylesheet" />
    <br />
    <br />
    <br />
    <div class="row">

        <asp:Repeater ID="RBooks" runat="server" DataSourceID="SDSBook">
            <ItemTemplate>
                <div class="offset-2 col-md-8">
                    <div class="alert alert-info">
                        <div class="panel-body">

                            <div class="form-group">
                                <div class="titlebook">
                                    <label class="control-label"></label>
                                    <%# Eval("bookTitle") %>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label"></label>
                                <img alt='<%# Eval("bookTitle") %>' src='<%# Eval("image") %>' />
                            </div>
                            <br />

                            <div class="form-group">
                                <label class="control-label"></label>
                                <%# Eval("bookDescription") %>
                            </div>
                             
                             <br />
                       
                           
                            <br />
                        </div>
                    </div>
                </div>
                <hr />

            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SDSBook" runat="server"
            ConnectionString="<%$ ConnectionStrings:BookDBConnectionString %>"
            SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
    </div>

    <footer>
        <p style="color:black"> &copy: Suzzane Collins 2018</p>
    </footer>
</asp:Content>
