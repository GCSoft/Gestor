<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="wucFullCalendar.ascx.cs" Inherits="GOF.Web.Include.WebUserControls.FullCalendar.wucFullCalendar" %>


<script src="../../../../Include/WebUserControls/FullCalendar/Script/moment.min.js" type="text/javascript"></script>
<script src="../../../../Include/WebUserControls/FullCalendar/Script/jquery.min.js" type="text/javascript"></script>
<script src="../../../../Include/WebUserControls/FullCalendar/Script/fullcalendar.min.js" type="text/javascript"></script>
<script src="../../../../Include/WebUserControls/FullCalendar/Script/lang-all.js" type="text/javascript"></script>
<script type="text/javascript">

	$(document).ready(function () {

		$('#calendar').fullCalendar({
			businessHours: {    // Sombra en gris que apoya a identificar el horario laboral, de L-V entre  6 am y 7 pm, el parámetro dow (Days Of Week) es un arreglo basado en cero en donde el domingo es el 0
				start: '06:00',
				end: '19:00',
				dow: [1, 2, 3, 4, 5]
			},
			defaultDate: '2015-02-17',
			editable: true,
			eventLimit: true,    // Permite la opción "más" cuando hay muchos elementos
			header: {
				left: 'month,agendaWeek,agendaDay',
				center: 'title'
			},
			lang: 'es',
			eventBackgroundColor: '#65B449',
			eventBorderColor: "#675C9D",
			eventTextColor: '#FFFFFF',

			events: [
				{
				    title: 'Minuta Junta',
					start: '2015-02-01'
				},
				{
				    title: 'Minuta Junta',
					start: '2015-02-07',
					end: '2015-02-10'
				},
				{
					id: 999,
					title: 'Minuta Junta',
					start: '2015-02-09T16:00:00'
				},
				{
					id: 999,
					title: 'Servicio Oficinas',
					start: '2015-02-16T16:00:00'
				},
				{
					title: 'Minuta Junta',
					start: '2015-02-11',
					end: '2015-02-13'
				},
				{
					title: 'Oficio Principal',
					start: '2015-02-12T10:30:00',
					end: '2015-02-12T12:30:00',
					color: '#675C9D',
					eventBorderColor: "#C1C1C1",
					eventTextColor: '#C1C1C1'
				},
				{
					title: 'Servicios',
					start: '2015-02-12T12:00:00'
				},
				{
					title: 'Minuta',
					start: '2015-02-12T14:30:00'
				},
				{
					title: 'Servicio Oficinas',
					start: '2015-02-12T17:30:00'
				},
				{
					title: 'Discurso',
					start: '2015-02-12T20:00:00'
				},
				{
					title: 'Mantenimiento',
					start: '2015-02-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2015-02-28'
				}
            ]
		});

	});

</script>



<div id="calendar" style="margin: 0 auto; max-width: 900px;"></div>