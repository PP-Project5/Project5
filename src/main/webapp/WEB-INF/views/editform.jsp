<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
    <style>
        body{
            background-color: #FFFCF2;
        }
        h1{
            font-family:"Georgia",serif;
            color:#FFCD66;
            display:flex;
            justify-content: center;
            align-items: center;
        }
        form{
            display:flex;
            justify-content: center;
            align-items: center;
        }
        table{
            font-family:"Georgia",serif;
            color:#FFBC35;
            font-weight: bold;
        }
        input[type="submit"]{
            background-color:#FFCCCC;
            border-color:#FF9696;
            border-radius:5px;
        }
        input[type="button"]{
            background-color:#FFCCCC;
            border-color:#FF9696;
            border-radius:5px;
        }
    </style>
</head>
<body>

<c:set var="boardDAO" value="<new com.example.BoardDAO()>" scope="page" />
<c:set var="id" value="${param.id}"/>
<c:set var="u" value="${boardDAO.getBoard(id)}"/>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
    <input type="hidden" name="seq" value="${u.seq}"/>
    <table>
        <tr><td>드라마명:</td><td><input type="text" name="title" value="${u.title}"/></td></tr>
        <tr><td>대표 배우:</td><td><input type="text" name="writer" value="${u.writer}" /></td></tr>
        <tr><td>줄거리:</td><td><textarea cols="50" rows="5" name="content">${u.content}</textarea></td></tr>
        <tr><td colspan="2"><input type="submit" value="Edit Post"/>
            <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
    </table>
</form>

</body>
</html>