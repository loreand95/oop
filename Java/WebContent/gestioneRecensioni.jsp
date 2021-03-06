<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Recensione"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>OOP17</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!--Custom Font-->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>OOP</span>2017</a>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	
	<!-- SIDEBAR -->
	<%@ include file="sidebar.jsp" %> 
	<!-- /.SIDEBAR -->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="active">Gestione Recensioni</li>
			</ol>
		</div>

		<!--TITOLO-->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Approvazione recensioni</h1>
			</div>
		</div>
		<!--/.TITOLO-->

		<!--BODY-->
		<div class="row">
			<div class="col-lg-12">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Utente</th>
							<th>Testo</th>
							<th colspan="2" class="text-center">Approvazione</th>
						</tr>
					</thead>
					<tbody>
					<%
						ArrayList<Recensione> lista = (ArrayList<Recensione>) request.getAttribute("recensioni");
						for (Recensione x : lista) {
					%>
					<tr>
					<th><%out.print(x.getUtente_username());%></th>
					<th><%out.print(x.getRecensione());%></th>
					<th class="text-center">
						<form method="post">
							<input type="hidden" name="utente" value="<%out.print(x.getUtente_username());%>">
							<input type="hidden" name="gioco" value="<%out.print(x.getGioco_id());%>">
							<input class="btn btn-success" type="submit" value="Approva">
						</form>
					</th>
					<th class="text-center">
						<form method="post" action="/oop17/EliminaRecensione">
							<input type="hidden" name="utente" value="<%out.print(x.getUtente_username());%>">
							<input type="hidden" name="gioco" value="<%out.print(x.getGioco_id());%>">
							<input class="btn btn-danger" type="submit" value="Elimina">
						</form>
					</th>		
					</tr>
					<%}%>
					</tbody>
					
				</table>
			</div>
		</div>
		<!--/.BODY-->
	</div>
	<!--/.row-->
	
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>
