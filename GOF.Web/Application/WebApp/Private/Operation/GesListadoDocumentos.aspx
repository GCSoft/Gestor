<%@ Page Title="" Language="C#" MasterPageFile="~/Include/MasterPage/PrivateTemplate.Master" AutoEventWireup="true" CodeBehind="GesListadoDocumentos.aspx.cs" Inherits="GOF.Web.Application.WebApp.Private.Operation.GesListadoDocumentos" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntPrivateTemplateHeader" runat="server">
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntPrivateTemplateBody" runat="server">
    <table class="GeneralTable">
        <tr>
            <td class="tdCeldaTituloEncabezado" style="background-image: url('../../../../Include/Image/Web/BarraTitulo.png');">
                Listado de Documentos
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
                                    <td>Solicitud</td>
									<td style="width:40px;">Solicita</td>
									<td style="width:40px;">Fecha Solicitud</td>
									<td style="width:240px;">Fecha Estimada</td>
									<td style="width:100px;">Estatus</td>
									<td style="width:100px;">Editar</td>
                                </tr>
                                <tr class="Grid_Row">
                                    <td colspan="11">No se encontraron ciudadanos registrados en el sistema</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <Columns>
							<asp:BoundField HeaderText="Solicitud"		    ItemStyle-HorizontalAlign="Left"							DataField="Solicitud"		SortExpression="NombreCompleto"></asp:BoundField>
							<asp:BoundField HeaderText="Solicita"		    ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="40px"	DataField="Solicita"				SortExpression="Edad"></asp:BoundField>
							<asp:BoundField HeaderText="Fecha Solicitud"	ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="40px"	DataField="FechaSolicitud"			SortExpression="SexoNombre"></asp:BoundField>
							<asp:BoundField HeaderText="Fecha Estimada"	    ItemStyle-HorizontalAlign="Left"	ItemStyle-Width="240px"	DataField="FechaEstimada"			SortExpression="Domicilio"></asp:BoundField>
							<asp:BoundField HeaderText="Estatus"		    ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="100px"	DataField="Estatus"		SortExpression="NombreEstado"></asp:BoundField>
							<asp:BoundField HeaderText="Editar"	            ItemStyle-HorizontalAlign="Center"	ItemStyle-Width="100px"	DataField="Editar"	                SortExpression="TelefonoPrincipal"></asp:BoundField>
							<asp:TemplateField ItemStyle-HorizontalAlign="Center" ItemStyle-Width="25px">
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
