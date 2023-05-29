<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%
List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
%>
<!doctype html>
<html lang="ko">
<head>
    <title>게시물리스트</title>
</head>
<body>
<h1>게시물 리스트 v1</h1>
<ul>
    <li>
        <%= articleRows.get(0).get("id")%>번,
        <%= articleRows.get(0).get("regDate")%>,
        <%= articleRows.get(0).get("updateDate")%>,
        <%= articleRows.get(0).get("title")%>
    </li>
    <li>
        <%= articleRows.get(1).get("id")%>번,
        <%= articleRows.get(1).get("regDate")%>,
        <%= articleRows.get(1).get("updateDate")%>,
        <%= articleRows.get(1).get("title")%>
    </li>
    <li>
        <%= articleRows.get(2).get("id")%>번,
        <%= articleRows.get(2).get("regDate")%>,
        <%= articleRows.get(2).get("updateDate")%>,
        <%= articleRows.get(2).get("title")%>
    </li>
</ul>
<h1>게시물 리스트</h1>

<table border="1">
    <thead>
    <tr>
        <th>번호</th>
        <th>작성날짜</th>
        <th>수정날짜</th>
        <th>제목</th>
    </tr>
    </thead>
    <tbody>
    <%
    for( Map<String, Object> articleRow : articleRows) {
    %>
    <tr>
        <td><%= articleRow.get("id")%>번</td>
        <td><%= articleRow.get("regDate")%></td>
        <td><%= articleRow.get("updateDate")%></td>
        <td><%= articleRow.get("title")%></td>
    </tr>
    <% } %>
    </tbody>
</table>


<h1>게시물 리스트 v2</h1>

<ul>
    <% for(int i = 0; i < 3; i++) { %>
    <li>
        <%= articleRows.get(i).get("id")%>번,
        <%= articleRows.get(i).get("regDate")%>,
        <%= articleRows.get(i).get("updateDate")%>,
        <%= articleRows.get(i).get("title")%>
    </li>
    <% } %>
</ul>

<h1>게시물 리스트 v3</h1>

<ul>
    <%
    for(int i = 0; i < 3; i++) {
    Map<String, Object> articleRow = articleRows.get(i);
    %>
    <li>
        <%= articleRow.get("id")%>번,
        <%= articleRow.get("regDate")%>,
        <%= articleRow.get("updateDate")%>,
        <%= articleRow.get("title")%>
    </li>
    <% } %>
</ul>

<h1>게시물 리스트 v4</h1>

<ul>
    <%
    for(int i = 0; i < articleRows.size(); i++) {
    Map<String, Object> articleRow = articleRows.get(i);
    %>
    <li>
        <%= articleRow.get("id")%>번,
        <%= articleRow.get("regDate")%>,
        <%= articleRow.get("updateDate")%>,
        <%= articleRow.get("title")%>
    </li>
    <% } %>
</ul>

<h1>게시물 리스트 v5</h1>

<ul>
    <%
    for( Map<String, Object> articleRow : articleRows) {
    %>
    <li>
        <%= articleRow.get("id")%>번,
        <%= articleRow.get("regDate")%>,
        <%= articleRow.get("updateDate")%>,
        <%= articleRow.get("title")%>
    </li>
    <% } %>
</ul>

</body>
</html>