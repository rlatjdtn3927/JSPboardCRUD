<%@ page import="com.example.jspboardcrud.BoardDAO" %>
<%@ page import="com.example.jspboardcrud.BoardVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><%= request.getAttribute("title") %></title>
</head>
<body>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    BoardDAO dao = new BoardDAO();
    BoardVO vo = new BoardVO();
    vo = dao.getBoard(id);
%>
<p><b>Writer:</b> <%= vo.getWriter() %></p>
<p><b>Category:</b> <%= vo.getCategory() %></p>
<p><b>Upload Date:</b> <%= vo.getRegdate() %></p>
<p><b>Cnt:</b> <%= vo.getCnt() %></p>
<hr>
<p><%= vo.getContent()%></p>
<hr>
<a href="posts.jsp">Go back to list</a>
</body>
</html>
