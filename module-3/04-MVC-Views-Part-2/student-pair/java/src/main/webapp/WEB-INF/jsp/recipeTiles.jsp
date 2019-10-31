<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width" />
<title>Recipe List View</title>
<link rel="stylesheet" href="css/site.css" />
</head>
<body>
	<header>
		<h1>MVC Exercises - Views Part 2: Models</h1>
	</header>
	<nav>
		<ul>
			<li><a href="recipeTiles">Tile Layout</a></li>
			<li><a href="recipeTable">Table Layout</a></li>
		</ul>

	</nav>
	<section id="main-content">
	<div id = "recipe-header"> Recipes
	</div>
	
	<c:forEach items = "${ recipes }" var = "recipe">
		<div class="recipie-display">
			<img src="img/recipe${recipe.recipeId }.jpg" />
			<div class= "recipie-name"> ${recipe.name }</div>
			<div class="star-rating">
			
			<c:forEach begin = "1" end = "5" var = "rating">
			
				<c:set var = "className" value = ""/>
				<c:if test = "${recipe.averageRating >= rating }">
				<c:set var = "className" value = " filled"/>
				</c:if>
				<span class="${ className }">&#9734;</span>
			</c:forEach>	
			
			</div>
			<div class="ingredients">
			${recipe.ingredients.size()} ingredients
			</div>
		</div>
	</c:forEach>
		<!-- Use the request attribute "recipes" (List<Recipe>) -->

	</section>
</body>
</html>