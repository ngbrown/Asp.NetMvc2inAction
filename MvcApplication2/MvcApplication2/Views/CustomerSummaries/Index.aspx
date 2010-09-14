<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MvcApplication2.Models.CustomerSummary>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Customer Summary</h2>

    <form action="<%= Url.Action("Save") %>" method="post">
    <table>
        <tr>
            <th>
                Name
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
            <th>
                Active?
            </th>
        </tr>

    <% int index = 0; foreach (var summary in Model) { %>
    
        <tr>
            <td>
                <%= Html.Encode(summary.Name) %>
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
            <td>
                <%= Html.CheckBox("input[" + index + "].Active", summary.Input.Active) %>
                <input type="hidden" name="<%= "input[" + index + "].Number" %>" value="<%= summary.Input.Number %>" />
            </td>
        </tr>
    
    <% index++; } %>

    </table>
            <div>
                <button name="save">Change Status</button>
            </div>
    </form>

</asp:Content>

