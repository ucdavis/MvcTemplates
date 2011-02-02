<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<MvcTemplates.Models.Order>" MasterPageFile="~/Views/Shared/Site.Master" %>
<asp:Content runat="server" ID="Title" ContentPlaceHolderID="TitleContent">Show an order</asp:Content>
<asp:Content runat="server" ID="Main" ContentPlaceHolderID="MainContent">

<h3>Displaying an order</h3>
<span>
    There are a few ways to display an order, depending on if you want to show the value of complex fields (like the Customer who created this order).
</span>

<br /><br />


<h4>Method #1: Simple display using Html.DisplayForModel()</h4>
<table>
    <%: Html.DisplayForModel() %>
</table>

<h4>Source</h4>
<pre class="prettyprint">
&lt;table&gt;
    &lt;%: Html.DisplayForModel() %&gt;
&lt;/table&gt;
</pre>

<h4>Method #2: Complex values are included using Html.DisplayForModel("IncludeComplexValues")</h4>
<table>
    <%: Html.DisplayForModel("IncludeComplexValues") %>
</table>

<h4>Source</h4>
<pre class="prettyprint">
&lt;table&gt;
    &lt;%: Html.DisplayForModel("IncludeComplexValues") %&gt;
&lt;/table&gt;
</pre>

<h4>Method #3: Custom properties alongside Html.DisplayForModel()</h4>
<table>
    <%: Html.DisplayForModel() %>
    <tr>
        <td><%: Html.LabelFor(x=>x.OrderedBy) %></td>
        <td>
            <%: Model.OrderedBy.ContactName %> at <em><%: Model.OrderedBy.CompanyName %></em> in <strong><%: Model.OrderedBy.Country %></strong>
        </td>
    </tr>
</table>

<h4>Source</h4>
<pre class="prettyprint">
&lt;table&gt;
    &lt;%: Html.DisplayForModel() %&gt;
    &lt;tr&gt;
        &lt;td&gt;&lt;%: Html.LabelFor(x=&gt;x.OrderedBy) %&gt;&lt;/td&gt;
        &lt;td&gt;
            &lt;%: Model.OrderedBy.ContactName %&gt; at &lt;em&gt;&lt;%: Model.OrderedBy.CompanyName %&gt;&lt;/em&gt; in &lt;strong&gt;&lt;%: Model.OrderedBy.Country %&gt;&lt;/strong&gt;
        &lt;/td&gt;
    &lt;/tr&gt;
&lt;/table&gt;
</pre>
</asp:Content>
