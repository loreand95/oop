<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="/oop17/fonts/user.png" class="img-responsive" alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name"><%=request.getAttribute("username")%></div>
				<div class="profile-usertitle-status">
					<span class="indicator label-success"></span>Online
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" disabled placeholder="<%=request.getAttribute("tipologia")%>">
			</div>
		</form>
		<ul class="nav menu">
			<li class="active"><a href="/oop17/Home"><em
					class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
			<li>
				<a href="/oop17/Giochi"><em class="fa fa-play-circle">&nbsp;</em>Giochi</a>
			</li>
			<li>
				<a href="/oop17/Profilo"><em class="fa fa-address-card">&nbsp;</em>Profilo</a>
			</li>
			<li>
				<a href="/oop17/Timeline"><em class="fa fa-signal">&nbsp;</em>Timeline</a>
			</li>
			<%if(!request.getAttribute("tipologia").equals("Utente")){%>
			<li>
				<a href="/oop17/GUtenti"><em class="fa fa-users">&nbsp;</em>GestioneUtenti</a>
			</li>
			<%}%>
			<%if(!request.getAttribute("tipologia").equals("Utente")){%>
			<li>
				<a href="/oop17/gestioneRecensioni"><em class="fa fa-list">&nbsp;</em>Gestione Recensioni</a>
			</li>
			<%}%>
			<%if(request.getAttribute("tipologia").equals("Admin")){%>
			<li>
				<a href="/oop17/gestiooneGiochi"><em class="fa fa-list">&nbsp;</em>Gestione Giochi</a>
			</li>
			<%}%>
			<li>
				<a href="/oop17/Logout"><em class="fa fa-power-off">&nbsp;</em>Logout</a>
			</li>
		</ul>
	</div>
	<!--/.sidebar-->