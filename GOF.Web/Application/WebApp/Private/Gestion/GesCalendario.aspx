<%@ Page Title="" Language="C#" MasterPageFile="~/Include/MasterPage/PrivateTemplate.Master" AutoEventWireup="true" CodeBehind="GesCalendario.aspx.cs" Inherits="GOF.Web.Application.WebApp.Private.Gestion.GesCalendario" %>
<%@ Register src="../../../../Include/WebUserControls/FullCalendar/wucFullCalendar.ascx" tagname="wucFullCalendar" tagprefix="wuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntPrivateTemplateHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntPrivateTemplateBody" runat="server">
	
	<wuc:wucFullCalendar ID="wucFullCalendar1" runat="server" />


</asp:Content>
