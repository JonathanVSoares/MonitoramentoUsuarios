<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<p>Clique nos botões que vc mais gostar :D</p>
	<c:if test="${not empty listaBotoes}">
		<c:forEach items="${listaBotoes}" var="botao">
			<button onclick="registrarClique(${botao.id})">${botao.nome}</button>
		</c:forEach>
	</c:if>
</body>
</html>