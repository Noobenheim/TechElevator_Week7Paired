<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe Table View</title>
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
	<table>
       <!-- Use the request attribute "recipes" (List<Recipe>) -->
       <c:forEach begin = "0" end = "5" var = "row">
       <tr>
       <th>
       <c:choose>
      	 	<c:when test = "${row ==1} }">
       		name
       		</c:when>
      		<c:when test = "${row ==2} }">
       		name
       		</c:when>
       		<c:when test = "${row ==3} }">
       		name
       		</c:when>
       		<c:when test = "${row ==4} }">
       		name
       		</c:when>
       		<c:when test = "${row ==5} }">
       		name
       		</c:when>
       </c:choose>
       </th>
       </tr>
       </c:forEach>
	</table>
    </section>
</body>
</html>