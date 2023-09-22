<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:out value="JSTL Core 태그 라이브러리" />

    <c:forEach var="k" begin="1" end="10" step="1">
        <c:out value="${k}" />
    </c:forEach>
</body>
</html>
