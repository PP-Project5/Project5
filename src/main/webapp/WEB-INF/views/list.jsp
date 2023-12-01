<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #FFFFCC;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #FFFFCC;}
        #list tr:hover {background-color: #FFFFCC;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #FFFFCC;
            color: #FFC41E;
        }
        h1{
            font-family:"Georgia",serif;
            color:#FFCD66;
            display:flex;
            justify-content: center;
            align-items: center;
        }
        .button{
            font-family:"Monaco",Monospace;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
        }
        #but{
            background-color: #FFCCCC;
            color: #FF9696;
        }
        #edit{
            background-color: #CCE5FF;
            color: #6666FF;
        }
        #delete{
            background-color: #E5CCFF;
            color: #9933FF;
        }
    </style>
    <script>
        function deletePost(id){
            var confirmDelete = confirm("정말로 삭제하겠습니까?");
            if(confirmDelete) {
                location.href='deletepost.jsp?id=' + id;
            }
        }
    </script>
</head>
<body>
<h1>Drama Storage</h1>
<%
    BoardDAO boardDAO = new BoardDAO();
    List<BoardVO> list = boardDAO.getBoardList();
%>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Content</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getSeq()}</td>
            <td>${u.getTitle()}</td>
            <td>${u.getWriter()}</td>
            <td>${u.getContent()}</td>
            <td>${u.getRegdate()}</td>
            <td><a href="editform.jsp?id=${u.getSeq()}" class="button" id="edit">Edit</a></td>
            <td><a href="javascript:deletePost('${u.getSeq()}')" class="button" id="delete">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="addpostform.jsp" class="button" id="but">Add New Post</a>
</body>
</html>
