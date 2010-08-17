

<%@ page import="jk.Battle" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'battle.label', default: 'Battle')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="../manager/manage.gsp">back</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${battleInstance}">
            <div class="errors">
                <g:renderErrors bean="${battleInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${battleInstance?.id}" />
                <g:hiddenField name="version" value="${battleInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="myId"><g:message code="battle.myId.label" default="My Id" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: battleInstance, field: 'myId', 'errors')}">
                                    <g:textField name="myId" value="${fieldValue(bean: battleInstance, field: 'myId')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="toId"><g:message code="battle.toId.label" default="To Id" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: battleInstance, field: 'toId', 'errors')}">
                                    <g:textField name="toId" value="${fieldValue(bean: battleInstance, field: 'toId')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="revise"><g:message code="battle.revise.label" default="Revise" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: battleInstance, field: 'revise', 'errors')}">
                                    <g:textField name="revise" value="${fieldValue(bean: battleInstance, field: 'revise')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
