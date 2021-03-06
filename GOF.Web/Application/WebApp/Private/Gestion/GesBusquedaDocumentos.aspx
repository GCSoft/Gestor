﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Include/MasterPage/PrivateTemplate.Master" AutoEventWireup="true" CodeBehind="GesBusquedaDocumentos.aspx.cs" Inherits="GOF.Web.Application.WebApp.Private.Gestion.GesBusquedaDocumentos" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntPrivateTemplateHeader" runat="server">
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntPrivateTemplateBody" runat="server">
    <table class="GeneralTable">
        <tr>
            <td class="tdCeldaTituloEncabezado" style="background-image: url('../../../../Include/Image/Web/BarraTitulo.png');">
                Busqueda de Oficios
            </td>
        </tr>
        <tr>
            <td class="SubTitulo"><asp:Label ID="Label2" runat="server" Text="Proporcione los filtros deseados para buscar los oficios."></asp:Label></td>
        </tr>
        <tr>
            <td>
				<asp:Panel ID="pnlFormulario" runat="server" Visible="true" Width="100%">
                    <table border="0" style="width: 460px">
                        <tr>
                            <td colspan="3">
                                <ajaxToolkit:Accordion ID="acrdBusqueda" runat="server" SelectedIndex="-1" HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent" FadeTransitions="false" FramesPerSecond="40" TransitionDuration="250" AutoSize="None" RequireOpenedPane="False">
                                    <Panes>
                                        <ajaxToolkit:AccordionPane ID="apnlFiltros" runat="server">
                                            <Header>
                                                <table border="0" cellpadding="0" cellspacing="0" width="120px">
                                                    <tr>
                                                        <td align="left" style="cursor: pointer;">
															<asp:Label ID="lblFiltro" Style="height: 23px;" runat="server" Font-Bold="true" Font-Names="Arial" Font-Size="9pt" Font-Underline="true">Búsqueda Avanzada</asp:Label>
														</td>
                                                    </tr>
                                                </table>
                                            </Header>
                                            <Content>
												<table border="0" style="width: 460px">
													<tr>
														<td class="Etiqueta">Tema</td>
														<td class="Espacio"></td>
														<td class="Campo"><asp:TextBox ID="TextBoxPaterno" runat="server" CssClass="Textbox_General" Width="211px"></asp:TextBox></td>
													</tr>
													<tr>
														<td class="Etiqueta">Remitente</td>
														<td class="Espacio"></td>
														<td class="Campo"><asp:TextBox ID="TextBoxMaterno" runat="server" CssClass="Textbox_General" Width="211px"></asp:TextBox></td>
													</tr>
													<tr>
														<td class="Etiqueta">Destinatario</td>
														<td class="Espacio"></td>
														<td class="Campo"><asp:DropDownList ID="BuscadorListaPais" runat="server" CssClass="DropDownList_General" Width="216px" AutoPostBack="True" OnSelectedIndexChanged="BuscadorListaPais_SelectedIndexChanged">
                                                            <asp:ListItem>[Seleccionar]</asp:ListItem>
                                                            <asp:ListItem>Manuel Cárdenas</asp:ListItem>
                                                            <asp:ListItem>Ricardo López</asp:ListItem>
                                                        </asp:DropDownList></td>
													</tr>
													<tr>
														<td class="Etiqueta">Fecha Compromiso</td>
														<td class="Espacio"></td>
														<td class="Campo"><asp:TextBox ID="TextBox1" runat="server" CssClass="Textbox_General" Width="211px"></asp:TextBox></td>
													</tr>
													<tr>
														<td class="Etiqueta">Grupo</td>
														<td class="Espacio"></td>
														<td class="Campo"><asp:DropDownList ID="BuscadorListaCiudad" runat="server" CssClass="DropDownList_General" Width="216px" AutoPostBack="True" OnSelectedIndexChanged="BuscadorListaCiudad_SelectedIndexChanged">
                                                            <asp:ListItem>[Seleccionar]</asp:ListItem>
                                                            <asp:ListItem>Soporte</asp:ListItem>
                                                            <asp:ListItem>Servicios</asp:ListItem>
                                                        </asp:DropDownList></td>
													</tr>
												</table>
                                            </Content>
                                        </ajaxToolkit:AccordionPane>
                                    </Panes>
                                </ajaxToolkit:Accordion>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr><td class="tdCeldaMiddleSpace"></td></tr>
        <tr>
            <td>
                <asp:Panel ID="pnlBotones" runat="server" Width="100%">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td style="height:24px; text-align:left; width:130px;">
                                <asp:Button ID="btnBuscar" runat="server" CssClass="Button_General"  Text="Buscar" Width="125px" OnClick="btnBuscar_Click" />
							</td>
                            <td style="height:24px;"></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr><td class="tdCeldaMiddleSpace"></td></tr>
        <tr>
            <td>
                <asp:Panel ID="pnlGrid" runat="server" Width="100%">
                    <asp:GridView ID="gvCiudadano" runat="server" AllowPaging="false" AllowSorting="true" AutoGenerateColumns="False" Width="100%"
						>
                        <%--DataKeyNames="CiudadanoId,NombreCompleto"
						OnRowDataBound="gvCiudadano_RowDataBound"
                        OnRowCommand="gvCiudadano_RowCommand"
						OnSorting="gvCiudadano_Sorting"--%>
                        <AlternatingRowStyle CssClass="Grid_Row_Alternating" />
                        <HeaderStyle CssClass="Grid_Header" />
                        <RowStyle CssClass="Grid_Row" />
                        <EmptyDataTemplate>
                            <table border="1px" cellpadding="0px" cellspacing="0px" width="100%">
                                <tr class="Grid_Header">
									<td style="width:40px;">Tema</td>
									<td style="width:40px;">Remitente</td>
									<td style="width:240px;">Destinatario</td>
									<td style="width:100px;">Grupo</td>
									<td style="width:100px;">Estatus</td>
									<td style="width:150px;">Ver Oficio</td>
                                </tr>
                                <tr class="Grid_Row">
                                    <td>Mantenimiento</td>
                                    <td>Manuel Cárdenas</td>
                                    <td>Ricardo López</td>
                                    <td>Soporte</td>
                                    <td>Por Revisar</td>
                                    <td><asp:ImageButton ID="imgGrid" runat="server" ImageUrl="~/Include/Image/Buttons/Edit.png" /></td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <Columns>
							<asp:BoundField HeaderText="Tema"		        ItemStyle-HorizontalAlign="Left"							DataField="Solicitud"		    SortExpression="Solicitud"></asp:BoundField>
							<asp:BoundField HeaderText="Remitente"		    ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="40px"	DataField="Solicita"		    SortExpression="Solicita"></asp:BoundField>
							<asp:BoundField HeaderText="Destinatario"	    ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="40px"	DataField="Responsable"		    SortExpression="Responsable"></asp:BoundField>
							<asp:BoundField HeaderText="Fecha Compromiso"	ItemStyle-HorizontalAlign="Left"	ItemStyle-Width="240px"	DataField="FechaCompromiso"		SortExpression="FechaCompromiso"></asp:BoundField>
							<asp:BoundField HeaderText="Grupo"		        ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="100px"	DataField="Area"		        SortExpression="Area"></asp:BoundField>
							<asp:BoundField HeaderText="Estatus"	        ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="100px"	DataField="Estatus"	            SortExpression="Estatus"></asp:BoundField>
							<asp:BoundField HeaderText="Ver Oficio"         ItemStyle-HorizontalAlign="Left"	ItemStyle-Width="150px"	></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr class="trFilaFooter"><td></td></tr>
    </table>

    <asp:HiddenField ID="hddSort" runat="server" Value="sNombre" />

</asp:Content>
