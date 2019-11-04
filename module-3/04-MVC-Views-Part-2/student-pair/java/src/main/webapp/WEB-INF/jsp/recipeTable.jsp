<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Recipe Table View" />
</c:import>
    <section id="main-content-table">
    <div id = "recipe-header-table">Recipes</div>
	<table>
       <!-- Use the request attribute "recipes" (List<Recipe>) -->
       <c:forEach begin = "0" end = "5" var = "row">
       <tr>
       <c:set var="cellValue" value="" />
       <c:choose>
      	 	<c:when test = "${row ==1 }">
       			<c:set var="cellValue" value="Name" />
       		</c:when>
      		<c:when test = "${row ==2 }">
       			<c:set var="cellValue" value="Type" />
       		</c:when>
       		<c:when test = "${row ==3 }">
       			 <c:set var="cellValue" value="Cook Time" />
       		</c:when>
       		<c:when test = "${row ==4 }">
       			 <c:set var="cellValue" value="Ingredients" />
       		</c:when>
       		<c:when test = "${row ==5 }">
       			 <c:set var="cellValue" value="Rating" />
       		</c:when>
       </c:choose>
       <th>
       ${ cellValue }
       </th>
       
       
       <c:forEach items="${ recipes }" var="recipe">
       <c:set var="cellValue" value="" />
       <c:choose>
      	 	<c:when test = "${row == 0 }">
      	 		<c:url value="recipeDetails?recipeId=${ recipe.recipeId }" var="url" />
       			<c:set var="cellValue" value="<a href='${ url }'><img src='img/recipe${ recipe.recipeId }.jpg' /></a>" />
       		</c:when>
      		<c:when test = "${row == 1 }">
       			<c:set var="cellValue" value="${ recipe.name }" />
       		</c:when>
       		<c:when test = "${row == 2 }">
       			 <c:set var="cellValue" value="${ recipe.recipeType }" />
       		</c:when>
       		<c:when test = "${row == 3 }">
       			 <c:set var="cellValue" value="${recipe.cookTimeInMinutes } min" />
       		</c:when>
       		<c:when test = "${row == 4 }">
       			 <c:set var="cellValue" value="${recipe.ingredients.size() } ingredients" />
       		</c:when>
       		<c:when test = "${row == 5 }">
       			 <c:set var="cellValue" value="" />
       			 <c:forEach begin = "1" end = "5" var = "rating">
			
				<c:set var = "className" value = ""/>
				<c:if test = "${recipe.averageRating >= rating }">
				<c:set var = "className" value = " filled"/>
				</c:if>
				
				<c:set var = "cellValue" value = "${ cellValue}<span class='${ className }'>&#9734;</span>"/>
			</c:forEach>	
       		</c:when>
       	</c:choose>
       
       <td>${ cellValue }</td>
       </c:forEach>
       
       </tr>
       </c:forEach>
	</table>
    </section>
<c:import url="/WEB-INF/jsp/common/footer.jsp" />