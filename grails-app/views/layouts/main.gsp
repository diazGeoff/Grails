<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
    <g:layoutHead/>
    <r:layoutResources />
</head>
<body>
<div id="grailsLogo" role="banner"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>
<g:layoutBody/>
<div id="navPane">
    <g:if test="${session.user}">
        <ul>
            <li><g:link controller="user"
                        action="music">My Music</g:link></li>
            <li><g:link controller="store"
                        action="shop">The Store</g:link></li>
        </ul>
        <div style="margin-top:20px">
            <div style="float:right;">
                <a href="#">Profile</a> | <g:link controller="user"
                                                  action="logout">Logout</g:link><br>
            </div>
            Welcome back
            <span id="userFirstName">
                ${session?.user?.firstName} ${session?.user?.lastName}!
            </span><br><br>
            You have purchased (${session?.user?.purchasedSongs?.size() ?: 0}) songs.<br>
        </div>
    </g:if>
    <g:else>
        <div class="login">
            <g:link controller="user" action="login">
                Login Here
            </g:link>
        </div>
        <div id="registerPane">
            Need an account?
            <g:link controller="user"
                    action="register">Signup now</g:link>
            to start your own personal Music collection!
        </div>
    </g:else>
</div>
<div class="footer" role="contentinfo"></div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<g:javascript library="application"/>
<r:layoutResources />
</body>
</html>
