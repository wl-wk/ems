<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="css/style.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
        function login() {
            $('#loginForm').form('submit', {
                url: "${pageContext.request.contextPath}/ems/login",
                onSubmit: function () {
                    var isValid = $(this).form('validate');
                    return isValid;
                },
                success: function (data) {
                    var data = eval('(' + data + ')');
                    if (data.code == -200) {
                        $.messager.show({
                            title: '提示',
                            msg: data.msg
                        });
                    }
                    if (data.code == 200) {
                        location.href = "${pageContext.request.contextPath}/ems/getAll";
                    }
                }
            });
        }

        $(function () {
            $("#login").on("click", login);
        });
    </script>
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
                login
            </h1>
            <form action="#" method="post" id="loginForm">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">
                    <tr>
                        <td valign="middle" align="right">
                            username:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="name" id="name"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            password:
                        </td>
                        <td valign="middle" align="left">
                            <input type="password" class="inputgri" name="pwd" id="pwd"/>
                        </td>
                    </tr>
                </table>
                <p>
                    <input type="button" class="button" id="login" value="Submit &raquo;"/>
                    &nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath}/regist.jsp">注册</a>
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
