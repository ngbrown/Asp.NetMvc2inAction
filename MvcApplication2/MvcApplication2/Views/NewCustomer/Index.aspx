<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication3.Models.NewCustomerInput>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>New Customer</h2>

    <form action="<%= Url.Action("Save") %>" method="post">
        <fieldset>
            <div class="editor-label">
                <%= Html.LabelFor(model => model.FirstName) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.FirstName) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.LastName) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.LastName) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Active) %>
            </div>
            <div class="editor-field">
                <%= Html.CheckBoxFor(model => model.Active) %>
            </div>
            
            <div>
                <button name="save">Save</button>
            </div>
        </fieldset>
    </form>

</asp:Content>

