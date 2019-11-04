<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Recipe Details" />
</c:import>
	<section id="main-content-details">
	
	<div id="recipe-image"><img src="img/recipe${ recipe.recipeId }.jpg" /></div>
	<div id="recipe-name">${ recipe.name }</div>
	<div id="recipe-type">${ recipe.recipeType }</div>
	<div id="recipe-cooktime"><span>Cook Time</span> ${ recipe.cookTimeInMinutes } minutes</div>
	<div id="recipe-description">${ recipe.description }</div>
	<div id="recipe-ingredients">
		<span>Ingredients</span>
		<ul>
		<c:forEach items="${ recipe.ingredients }" var="ingredient">
			<li>${ ingredient.quantity } ${ ingredient.name }</li>
		</c:forEach>
		</ul>
	</div>
	<div id="recipe-prep">
		<span>Preparation</span>
		<ol>
		<c:forEach items="${ recipe.preparationSteps }" var="step">
			<li>${ step }</li>
		</c:forEach>
		</ol>
	</div>
	
	</section>
<c:import url="/WEB-INF/jsp/common/footer.jsp" />