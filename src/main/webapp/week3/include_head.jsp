<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
  int pageCount = 0;
  void addCount() {
    pageCount++;
  }
%>

<%
  addCount();
%>

<p>
  이 사이트 방문은 <%=pageCount%>번째입니다.
</p>