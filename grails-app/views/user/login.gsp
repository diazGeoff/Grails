<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 4/24/14
  Time: 6:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Login Page</title>
</head>

<body>
<div id="loginBox" class="loginBox">
    <g:if test="${session?.user}">

    </g:if>
    <g:else>
        <g:form
                name="loginForm"
                action="login">
            <div>Username:</div>
            <g:textField name="login"
                         value="${params.login}">
            </g:textField>
            <div>Password:</div>
            <g:passwordField name="password" value="${params.password}"></g:passwordField>
            <br/>
            <g:submitButton name="create" class="" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </g:form>
    </g:else>
</div>
</body>
</html>