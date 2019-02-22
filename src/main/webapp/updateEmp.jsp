<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>update Emp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath }/css/style.css"/>
</head>

<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader">
                <p>
                    2009/11/20
                    <br/>
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    <a href="${pageContext.request.contextPath }/ems/getAll">Main</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                update Emp info:
            </h1>
            <form action="${pageContext.request.contextPath }/ems/modify" method="post">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">
                    <tr>
                        <td valign="middle" align="right">
                            id:
                        </td>
                        <td valign="middle" align="left">
                            ${requestScope.ems.id}
                            <input type="hidden" name="id" value="${requestScope.ems.id}"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            name:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="name" value="${requestScope.ems.name}"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            realName:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="salary" value="${requestScope.ems.realName}"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            sex:
                        </td>
                        <td valign="middle" align="left">
                            <c:if test="${requestScope.ems.sex==1}">
                                男
                                <input type="radio" class="inputgri" name="sex" value="1" checked="checked"/>
                                女
                                <input type="radio" class="inputgri" name="sex" value="0"/>
                            </c:if>
                            <c:if test="${requestScope.ems.sex==0}">
                                男
                                <input type="radio" class="inputgri" name="sex" value="1" checked="checked"/>
                                女
                                <input type="radio" class="inputgri" name="sex" value="0" checked="checked"/>
                            </c:if>
                        </td>
                    </tr>
                </table>
                <p>
                    <input type="submit" class="button" value="Confirm"/>
                </p>
            </form>
        </div>
    </div>
    <div id="footer">
        <div id="footer_bg">
            ABC@126.com
        </div>
    </div>
</div>
</body>
</html>
