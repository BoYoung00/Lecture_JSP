<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>JSP - Hello World</title>
</head>
<body>
    <h1><%= "Hello World!" %></h1>
    <br/>
    <%! int count = 3;
    String makeItLower(String data) {
        return data.toLowerCase();
    } %>

    <%
        for (int i = 1; i <= count; i++) {
    %>
        <p>Java Server Pages <%=i%></p>
    <% } %><br>


    <%=makeItLower("Hellod world") %>
</body>
</html>