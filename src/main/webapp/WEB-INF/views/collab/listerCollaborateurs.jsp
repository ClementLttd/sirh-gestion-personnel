<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-4.3.1-dist/css/bootstrap.css">
<title>SGP - App</title>
</head>

<body>
	<!-- TODO -->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script>
		$('#myModal').on('shown.bs.modal', function() {
			$('#myInput').trigger('focus')
		})
	</script>

	<!-- Barre de navigation -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">

		<a class="navbar-brand" href="#"> <img src="img/logo_sgp.png"
			width="110" height="70" alt=""></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.html">Collaborateurs <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">Statistiques
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="#">Activités
						<span class="sr-only">(current)</span>
				</a></li>
			</ul>
		</div>

	</nav>
	<!-- Fin de la barre de navigation -->


	<main>
		<!--Titre de la page-->
		<div class="container" style="margin-top: 40px;">
			<div class="row">
				<div class="col" style="text-align: left; font-size: medium;">
					<h1>Nouveau Collaborateur</h1>
				</div>
			</div>
		</div>

		<!--Formulaire-->
		<div class="container" style="margin-top: 50px;">
			<form>

				<!--Nom-->
				<div class="form-group row">
					<div class="col-sm-1"></div>
					<label for="lastName" class="col-sm-3 col-form-label">Nom</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="lastName">
					</div>
				</div>

				<!--Prénom-->
				<div class="form-group row">
					<div class="col-sm-1"></div>
					<label for="firstName" class="col-sm-3 col-form-label">Prénom</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="firstName">
					</div>
				</div>

				<!--Date de Naissance-->
				<div class="form-group row">
					<div class="col-sm-1"></div>
					<label for="birthDate" class="col-sm-3 col-form-label">Date
						de Naissance</label>
					<div class="col-sm-7">
						<input type="date" class="form-control" id="birthDate">
					</div>
				</div>

				<!--Adresse-->
				<div class="form-group row">
					<div class="col-sm-1"></div>
					<label for="adress" class="col-sm-3 col-form-label">Adresse</label>
					<div class="col-sm-7">
						<textarea class="form-control" id="adress" rows="3"></textarea>
					</div>
				</div>

				<!--Numéro Sécurité Sociale-->
				<div class="form-group row">
					<div class="col-sm-1"></div>
					<label for="num_secu" class="col-sm-3 col-form-label">Numéro
						de Sécurité Sociale</label>
					<div class="col-sm-7">
						<input type="number" class="form-control" id="num_secu">
					</div>
				</div>

				<!--Bouton créer-->
				<div class="container" style="margin-top: 20px;">
					<div class="row">
						<div class="col-sm-10"></div>
						<div class="col-sm-2">
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModalCenter">Créer</button>
						</div>
					</div>
				</div>

				<!-- Modal -->
				<div class="container">
					<div class="modal fade" id="exampleModalCenter" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalCenterTitle"
						aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalCenterTitle">Création
										d'un collaborateur</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col">Vous êtes sur le point de créer un
											nouveau collaborateur :</div>
									</div>
									<div class="row">
										<div class="col-sm-5">Nom</div>
										<div class="col-sm-5">....................</div>
									</div>
									<div class="row">
										<div class="col-sm-5">Prénom</div>
										<div class="col-sm-5">....................</div>
									</div>
									<div class="row">
										<div class="col-sm-5">Date de Naissance</div>
										<div class="col-sm-5">....................</div>
									</div>
									<div class="row">
										<div class="col-sm-5">Adresse</div>
										<div class="col-sm-5">....................</div>
									</div>
									<div class="row">
										<div class="col-sm-5">Numéro de Sécurité Sociale</div>
										<div class="col-sm-5">....................</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Annuler</button>
									<button type="button" class="btn btn-primary">
										<a href="creer_errors.html">Confirmer</a>
									</button>
								</div>
							</div>
						</div>
					</div>
			</form>
		</div>
		<!--Fin du formulaire-->

		</div>
	</main>



	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-
      J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

<!--<ul>
	<%
		List<String> listeNoms = (List<String>) request.getAttribute("listeNoms");
		for (String nom : listeNoms) {
	%>
	<li><%=nom%></li>
	<%
		}
	%>
</ul>  -->

</body>
</html>