<html>
<head>
    <title>${project}</title>
    <style>
    body{
		background-color:#CEF6CE;
	}
	#wrapp1{
		height: 500px;
		float:left;
		width:50%;
		background-color:white;
	}
	#wrapp2{
		height: 500px;
		float:right;
		width:50%;
		background-color:white;
	}
	#top1{
		height: 150px;
		position:relative;
		margin: auto;
		text-align: center;
		background-color:gray;
	}
	#top2{
		height: 150px;
		position:relative;
		margin: auto;
		text-align: center;
		background-color:black;
	}
	#imagen{
		position:relative;
		margin: auto;
		text-align: center;
	}
	h1{
		color: white;
	}
	#gris{
		color: gray;
	}
	#negre{
		color: black;
	}
	#llibre{
		height:200px;
		overflow:auto;
	}
    </style>
</head>
 
<body>
	
	<div id="all"></div>
	<div id="wrapp1">
		<div id="top1">
			<h1>Projecte ${project}</h1>
			<p>Quin dia vas neixer?</p>
		
			<form id="fecha_select" method="post">
			<select name="mes">
				<option>- Mes -</option>
				<option value="1">Gener</option>
				<option value="2">Febrer</option>
				<option value="3">Març</option>
				<option value="4">Abril</option>
				<option value="5">Maig</option>
				<option value="6">Juny</option>
				<option value="7">Juliol</option>
				<option value="8">Agost</option>
				<option value="9">Setembre</option>
				<option value="10">Octubre</option>
				<option value="11">Novembre</option>
				<option value="12">Decembre</option>
			</select> 
			<select name="dia">
				<option>- Dia -</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select> 
			<input type="submit" value="Submit">
			</form>
			<br>
		</div>
		<div id="imagen">    
			<img src="${imatges}" />
			<p>${frase}</p>
		</div>
	</div>
	
	<div id="wrapp2">
		<div id="top2">
			<h1>GuestBook : ${project}</h1>
			<br>
		</div>
		<div id="llibre">
			
			<ul>
			% for visit in visites:
				<a id="negre">Zodiac : </a><a id="gris">${visit.zodiac}</a> <a id="negre">|</a>
				<a id="negre">Frase : </a><a id="gris">${visit.frase}</a> <a id="negre">|</a>
				<a id="negre">Data : </a><a id="gris">${visit.fecha}</a> <a id="negre">|</a>
				<a id="negre">Naix : </a><a id="gris">${visit.naix}</a> <a id="negre">|</a>
				<br /><br />
			% endfor
			</ul>		
		</div>
	</div>
</body>
 
</html>
