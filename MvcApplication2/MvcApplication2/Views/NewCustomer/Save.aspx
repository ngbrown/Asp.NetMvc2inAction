<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication3.Models.NewCustomerInput>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Save
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Save New Customer</h2>

    <fieldset>
        <div class="display-label">FirstName</div>
        <div class="display-field"><%= Html.Encode(Model.FirstName) %></div>
        
        <div class="display-label">LastName</div>
        <div class="display-field"><%= Html.Encode(Model.LastName) %></div>
        
        <div class="display-label">Active</div>
        <div class="display-field"><%= Html.Encode(Model.Active) %></div>
    </fieldset>

</asp:Content>

