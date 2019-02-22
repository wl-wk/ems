<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>emplist</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css"/>
</head>
<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader">
                <p>
                    2009/11/20
                    <br/>
                    <a href="${pageContext.request.contextPath }/login.jsp">安全退出</a>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    <a href="#">main</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                Welcome!
            </h1>
            <table class="table">
                <tr class="table_header">
                    <td>
                        ID
                    </td>
                    <td>
                        Name
                    </td>
                    <td>
                        RealName
                    </td>
                    <td>
                        sex
                    </td>
                    <td>
                        Operation
                    </td>
                </tr>
                <c:forEach items="${requestScope.list}" var="p" varStatus="vs">
                    <tr class="row${vs.count%2+1}">
                        <td>
                                ${vs.count}
                        </td>
                        <td>
                                ${p.name}
                        </td>
                        <td>
                                ${p.realName}
                        </td>
                        <td>
                            <c:if test="${p.sex==1}">男</c:if>
                            <c:if test="${p.sex==0}">女</c:if>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath }/ems/remove?id=${p.id}">delete emp</a>&nbsp;<a
                                href="${pageContext.request.contextPath }/ems/getModify?id=${p.id}">update emp</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <p>
                <input type="button" class="button" value="Add Employee"
                       onclick="location='${pageContext.request.contextPath }/addEmp.jsp'"/>
            </p>
        </div>
        <a href="">1</a>
        <a href="">2</a>
        <a href="">3</a>
    </div>
    <div id="footer">
        <div id="footer_bg">
            ABC@126.com
        </div>
    </div>
</div>
</body>
</html>
