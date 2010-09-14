<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication2.Models.CustomerSummary>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Customer Summary</h2>

    <table>
        <tr>
            <th>
                Name
            </th>
            <th>
                Active?
            </th>
            <th>
                Service Level
            </th>
            <th>
                Order Count
            </th>
            <th>
                Most Recent Order Date
            </th>
        </tr>

    <% foreach (var summary in Model) { %>
    
        <tr>
            <td>
                <%= Html.Encode(summary.Name) %>
            </td>
            <td>
                <%= Html.Encode(summary.Active ? "Yes" : "No") %>
            </td>
            <td>
                <%= Html.Encode(summary.ServiceLevel) %>
            </td>
            <td>
                <%= Html.Encode(summary.OrderCount) %>
            </td>
            <td>
                <%= Html.Encode(summary.MostRecentOrderDate) %>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>

