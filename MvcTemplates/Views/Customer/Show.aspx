<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<MvcTemplates.Models.Customer>" MasterPageFile="~/Views/Shared/Site.Master" %>
<asp:Content runat="server" ID="Title" ContentPlaceHolderID="TitleContent">Showing a customer</asp:Content>
<asp:Content runat="server" ID="Main" ContentPlaceHolderID="MainContent">

<h3>Displaying a customer</h3>
<span>
    Uses Html.DisplayForModel() to display the customer info.  Note the Id property is not included.
</span>

<br /><br />

<table>
    <%: Html.DisplayForModel() %>
</table>

<h4>Source</h4>
<pre class="prettyprint">
&lt;table&gt;
    &lt;%: Html.DisplayForModel() %&gt;
&lt;/table&gt;
</pre>

</asp:Content>