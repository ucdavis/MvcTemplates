<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<MvcTemplates.Models.Order>" MasterPageFile="~/Views/Shared/Site.Master" %>
<%@ Import Namespace="MvcTemplates.Models" %>
<asp:Content runat="server" ID="Title" ContentPlaceHolderID="TitleContent">Editing an Order</asp:Content>
<asp:Content runat="server" ID="Main" ContentPlaceHolderID="MainContent">

<h3>Editing an order</h3>
<span>
    There are a few ways to edit an order, depending on if you want to edit the associated complex fields (like the Customer who created this order).
</span>

<br /><br />


<h4>Method #1: Simple editor using Html.EditorForModel()</h4>
<table>
    <%: Html.EditorForModel() %>
</table>

<h4>Source</h4>
<pre class="prettyprint">
&lt;table&gt;
    &lt;%: Html.EditorForModel() %&gt;
&lt;/table&gt;
</pre>

<h4>Method #2: Complex values are included using Html.EditorForModel("IncludeComplexValues").  Calls Html.Editor() on complex property.  Not very helpful in this case.</h4>
<table>
    <%: Html.EditorForModel("IncludeComplexValues") %>
</table>

<h4>Source</h4>
<pre class="prettyprint">
&lt;table&gt;
    &lt;%: Html.EditorForModel("IncludeComplexValues") %&gt;
&lt;/table&gt;
</pre>

<h4>Method #3: Custom included properties alongside Html.EditorForModel().  The most useful technique in practice.</h4>
<table>
    <%: Html.EditorForModel() %>
    <tr>
        <td><%: Html.LabelFor(x=>x.OrderedBy) %></td>
        <td>
            <%:Html.DropDownListFor(x => x.OrderedBy, new SelectList(ModelCreator.GetNCustomers(5), "Id", "CompanyName")) %>
            <%: Html.ValidationMessageFor(x=>x.OrderedBy) %>
        </td>
    </tr>
</table>

<h4>Source</h4>
<pre class="prettyprint">
&lt;table&gt;
    &lt;%: Html.EditorForModel() %&gt;
    &lt;tr&gt;
        &lt;td&gt;&lt;%: Html.LabelFor(x=&gt;x.OrderedBy) %&gt;&lt;/td&gt;
        &lt;td&gt;
            &lt;%:Html.DropDownListFor(x =&gt; x.OrderedBy, new SelectList(ModelCreator.GetNCustomers(5), &quot;Id&quot;, &quot;CompanyName&quot;)) %&gt;
            &lt;%: Html.ValidationMessageFor(x=&gt;x.OrderedBy) %&gt;
        &lt;/td&gt;
    &lt;/tr&gt;
&lt;/table&gt;
</pre>
</asp:Content>
