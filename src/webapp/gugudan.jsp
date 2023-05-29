<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="com.sbs.exam.Rq "%>


<%

Rq rq = new Rq(request, response);





%>

<%
    int dan = 9;
%>

<h1><%=dan%>단</h1>

<% for(int i = 1; i <= 9; i++) { %>
<div><%=dan%> * <%=i%> = <%=dan * i%></div>
<% } %>






<div class="a"></div>

<style>
    .a{
        width: 100px;
        height: 100px;
        background-color: red;
    }
</style>