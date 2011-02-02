<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    About this site
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        ASP.NET MVC Object Templates project.
    </p>
    <p>
    Shows an example of using some custom built templates for editing and displaying objects in ASP.NET MVC using the Hmtl.EditorFor[Model] type of helpers.
    </p>
    <p>
    Pages include Show/Edit examples for a simple Customer object and a slightly more complex Order object.
    </p>
    <p>
    Based off of the built in ASP.NET MVC samples and Brad Wilson's <a href="http://bradwilson.typepad.com/blog/2009/10/aspnet-mvc-2-templates-part-4-custom-object-templates.html">blog post</a>.
    </p>
</asp:Content>
