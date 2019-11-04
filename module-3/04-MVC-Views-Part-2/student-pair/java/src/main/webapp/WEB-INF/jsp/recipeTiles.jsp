<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Recipe List View" />
</c:import>
	<section id="main-content">
		<div id = "recipe-header">Recipes</div>
	
	<c:forEach items = "${ recipes }" var = "recipe">
		<div class="recipe-display">
			<c:url value="recipeDetails?recipeId=${ recipe.recipeId }" var="url" />
			<a href="${ url }">
				<img src="img/recipe${recipe.recipeId }.jpg" />
			</a>
			<div class= "recipe-name"> ${recipe.name }</div>
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
<c:import url="/WEB-INF/jsp/common/footer.jsp" />