<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication2.Models.CustomerSummary.CustomerSummaryInput>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Save
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Save Customer Summary Input</h2>

    <table>
        <tr>
            <th>Id</th>
            <th>Active?</th>
        </tr>

        <% foreach (var input in Model) { %>

        <tr>
            <td>
                <%= Html.Encode(input.Number) %>
            </td>
            <td>
                <%= Html.Encode(input.Active ? "Yes" : "No") %>
            </td>
        </tr>

        <% } %>
    </table>
</asp:Content>
