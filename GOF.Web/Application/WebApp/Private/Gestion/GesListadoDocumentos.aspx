<%@ Page Title="" Language="C#" MasterPageFile="~/Include/MasterPage/PrivateTemplate.Master" AutoEventWireup="true" CodeBehind="GesListadoDocumentos.aspx.cs" Inherits="GOF.Web.Application.WebApp.Private.Gestion.GesListadoDocumentos" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntPrivateTemplateHeader" runat="server">
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntPrivateTemplateBody" runat="server">
    <table class="GeneralTable">
        <tr>
            <td class="tdCeldaTituloEncabezado" style="background-image: url('../../../../Include/Image/Web/BarraTitulo.png');">
                Listado de Oficios
            </td>
        </tr>
        <tr>
            <td class="SubTitulo"><asp:Label ID="Label2" runat="server" Text="Listado de documentos pendientes de alguna acción."></asp:Label></td>
        </tr>
        <tr><td class="tdCeldaMiddleSpace"></td></tr>
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
									<td style="width:40px;">Fecha Solicitud</td>
									<td style="width:240px;">Fecha Compromiso</td>
									<td style="width:100px;">Estatus</td>
									<td style="width:100px;">Editar</td>
                                </tr>
                                <tr class="Grid_Row">
                                    <td>Mantenimiento</td>
                                    <td>Manuel Cárdenas</td>
                                    <td>20-02-2015</td>
                                    <td>22-02-2015</td>
                                    <td>Por Revisar</td>
                                    <td><asp:ImageButton ID="imgGrid" runat="server" ImageUrl="~/Include/Image/Buttons/Edit.png" /></td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <Columns>
							<asp:BoundField HeaderText="Tema"		                ItemStyle-HorizontalAlign="Left"	ItemStyle-Width="40px"	DataField="Solicitud"		SortExpression="NombreCompleto"></asp:BoundField>
							<asp:BoundField HeaderText="Remitente"		            ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="40px"	DataField="Solicita"				SortExpression="Edad"></asp:BoundField>
							<asp:BoundField HeaderText="Fecha Solicitud"	        ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="40px"	DataField="FechaSolicitud"			SortExpression="SexoNombre"></asp:BoundField>
							<asp:BoundField HeaderText="Fecha Compromiso"	        ItemStyle-HorizontalAlign="Left"	ItemStyle-Width="240px"	DataField="FechaEstimada"			SortExpression="Domicilio"></asp:BoundField>
							<asp:BoundField HeaderText="Estatus"		            ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="100px"	DataField="Estatus"		SortExpression="NombreEstado"></asp:BoundField>
							<asp:BoundField HeaderText="Editar"	                    ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="100px"	DataField="Editar"	                SortExpression="TelefonoPrincipal"></asp:BoundField>
							<asp:TemplateField ItemStyle-HorizontalAlign="Center"   ItemStyle-Width="25px">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgEdit" runat="server" CommandArgument='<%#Eval("CiudadanoId")%>' CommandName="Editar" ImageUrl="~/Include/Image/Buttons/Edit.png" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr class="trFilaFooter"><td></td></tr>
    </table>

    <asp:HiddenField ID="hddSort" runat="server" Value="sNombre" />

</asp:Content>
