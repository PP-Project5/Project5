<!DOCTYPE html>
<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        a{
            font-family:"Monaco",Monospace;
            background-color: #FFCCCC;
            color: #FF9696;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            border-radius: 5px;

        }
    </style>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>Add New Drama</h1>
<form action="addpost.jsp" method="post">
    <table>
        <tr><td>드라마명:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>대표 배우:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>줄거리:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        <tr><td><a href="posts.jsp">View All Records</a></td><td align="right">
            <input type="submit" value="Add Post"/></td></tr>
    </table>
</form>
</body>
</html>