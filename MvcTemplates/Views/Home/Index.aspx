<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Welcome to the Mvc Templates site</h2>
    <p>
        Please visit the following pages to see the templates in action, and download the templates yourself from <a href="https://github.com/ucdavis">the ucd github repository</a>
    </p>
    <div>
        <ul>            
            <li><%: Html.ActionLink("Show Customer", "Show", "Customer")%></li>
            <li><%: Html.ActionLink("Edit Customer", "Edit", "Customer")%></li>
            <li><%: Html.ActionLink("Show Order", "Show", "Order")%></li>
            <li><%: Html.ActionLink("Edit Order", "Edit", "Order")%></li>
        </ul>
    </div>
    <p>
        See the <%: Html.ActionLink("about page", "About")%> for more information
    </p>
</asp:Content>
