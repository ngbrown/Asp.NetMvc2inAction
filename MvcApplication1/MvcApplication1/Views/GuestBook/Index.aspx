<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.GuestBookEntry>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Guest Book</h2>

    <p>Please sign the Guest Book!</p>

    <% using (Html.BeginForm()) { %>
    <fieldset>
        <legend>Guest Book</legend>

        <%= Html.LabelFor(model => model.Name) %>
        <%= Html.TextBoxFor(model => model.Name) %>

        <%= Html.LabelFor(model => model.Email) %>
        <%= Html.TextBoxFor(model => model.Email) %>

        <%= Html.LabelFor(model => model.Comments) %>
        <%= Html.TextAreaFor(model => model.Comments, new { rows=6, cols=30 }) %>

        <div>
            <input type="submit" value="Create" />
        </div>
    </fieldset>
    <% } %>

</asp:Content>
