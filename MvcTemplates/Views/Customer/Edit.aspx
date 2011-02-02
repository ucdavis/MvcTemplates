<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<MvcTemplates.Models.Customer>" MasterPageFile="~/Views/Shared/Site.Master" %>
<asp:Content runat="server" ID="Title" ContentPlaceHolderID="TitleContent">Editing a customer</asp:Content>
<asp:Content runat="server" ID="Main" ContentPlaceHolderID="MainContent">

<h3>Editing a customer</h3>
<span>
    Uses Html.EditorForModel() to create an edit for for customers.  Note the Id property is not included, and fields marked with [Required] include a * indicator.
</span>

<br /><br />

<table>
    <%: Html.EditorForModel() %>
</table>

</asp:Content>
