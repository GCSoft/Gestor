<%@ Page Title="" Language="C#" MasterPageFile="~/Include/MasterPage/PrivateTemplate.Master" AutoEventWireup="true" CodeBehind="GesActualizaEstatus.aspx.cs" Inherits="GOF.Web.Application.WebApp.Private.Gestion.GesActualizaEstatus" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntPrivateTemplateHeader" runat="server">
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntPrivateTemplateBody" runat="server">
    <table class="GeneralTable">
        <tr>
            <td class="tdCeldaTituloEncabezado" style="background-image: url('../../../../Include/Image/Web/BarraTitulo.png');">
                Actualizar Estatus
            </td>
        </tr>
        <tr>
            <td class="SubTitulo"><asp:Label ID="Label2" runat="server" Text="Actualice estatus de documento"></asp:Label></td>
        </tr>
        <tr>
            <td>
				<asp:Panel ID="pnlFormulario" runat="server" Visible="true" Width="100%">
                    <table border="0" style="width: 460px">
                        <tr>
                            <td colspan="3">
								<table border="0" style="width: 460px">
									<tr>
										<td class="Etiqueta">Documento</td>
										<td class="Espacio"></td>
										<td class="Campo"><asp:TextBox ID="TextBoxPaterno" runat="server" CssClass="Textbox_General" Width="211px"></asp:TextBox></td>
									</tr>
									<tr>
										<td class="Etiqueta">Comentario</td>
										<td class="Espacio"></td>
										<td class="Campo"><asp:TextBox ID="TextBoxMaterno" runat="server" CssClass="Textbox_General" Width="211px" TextMode="MultiLine"></asp:TextBox></td>
									</tr>
									<tr>
										<td class="Etiqueta">Estatus</td>
										<td class="Espacio"></td>
										<td class="Campo"><asp:DropDownList ID="BuscadorListaPais" runat="server" CssClass="DropDownList_General" Width="216px" AutoPostBack="True" OnSelectedIndexChanged="BuscadorListaPais_SelectedIndexChanged"></asp:DropDownList></td>
									</tr>
								</table>                                       
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
                                <asp:Button ID="Button1" runat="server" CssClass="Button_General"  
                                    Text="Visualizar" Width="125px" OnClick="btnVisualizar_Click" />
							</td>
                            <td style="height:24px; text-align:left; width:130px;">
                                <asp:Button ID="btnBuscar" runat="server" CssClass="Button_General"  Text="Actualizar" Width="125px" OnClick="btnBuscar_Click" />
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
                </asp:Panel>
            </td>
        </tr>
        <tr class="trFilaFooter"><td></td></tr>
    </table>

    <asp:HiddenField ID="hddSort" runat="server" Value="sNombre" />

</asp:Content>
