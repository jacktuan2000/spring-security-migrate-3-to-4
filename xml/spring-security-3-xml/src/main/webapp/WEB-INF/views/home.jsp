<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<p>
		Message <b><c:out value="${message}" /></b>
	</p>
	<p>
		<a href="./j_spring_security_logout">Log Out</a>
	</p>

	<sec:authorize ifAllGranted="ROLE_ADMIN,ROLE_USER">
		<p>Must have ROLE_ADMIN and ROLE_USER</p>
	</sec:authorize>
	<sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_USER">
		<p>Must have ROLE_ADMIN or ROLE_USER</p>
	</sec:authorize>
	<sec:authorize ifNotGranted="ROLE_ADMIN,ROLE_USER">
		<p>Must not have ROLE_ADMIN</p>
	</sec:authorize>
</body>
</html>
