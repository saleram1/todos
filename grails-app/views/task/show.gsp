<%@ page import="todos.Task" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-task" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list task">

        <g:if test="${taskInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label"><g:message code="task.name.label" default="Name"/></span>

                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${taskInstance}"
                                                                                        field="name"/></span>

            </li>
        </g:if>

        <g:if test="${taskInstance?.summary}">
            <li class="fieldcontain">
                <span id="summary-label" class="property-label"><g:message code="task.summary.label"
                                                                           default="Summary"/></span>

                <span class="property-value" aria-labelledby="summary-label"><g:fieldValue bean="${taskInstance}"
                                                                                           field="summary"/></span>

            </li>
        </g:if>

        <g:if test="${taskInstance?.description}">
            <li class="fieldcontain">
                <span id="description-label" class="property-label"><g:message code="task.description.label"
                                                                               default="Description"/></span>

                <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${taskInstance}"
                                                                                               field="description"/></span>

            </li>
        </g:if>

        <g:if test="${taskInstance?.dueDate}">
            <li class="fieldcontain">
                <span id="dueDate-label" class="property-label"><g:message code="task.dueDate.label"
                                                                           default="Due Date"/></span>

                <span class="property-value" aria-labelledby="dueDate-label"><g:formatDate
                        date="${taskInstance?.dueDate}"/></span>

            </li>
        </g:if>

        <g:if test="${taskInstance?.projectName}">
            <li class="fieldcontain">
                <span id="projectName-label" class="property-label"><g:message code="task.projectName.label"
                                                                               default="Project Name"/></span>

                <span class="property-value" aria-labelledby="projectName-label"><g:fieldValue bean="${taskInstance}"
                                                                                               field="projectName"/></span>

            </li>
        </g:if>

        <g:if test="${taskInstance?.assignedTo}">
            <li class="fieldcontain">
                <span id="assignedTo-label" class="property-label"><g:message code="task.assignedTo.label"
                                                                              default="Assigned To"/></span>

                <span class="property-value" aria-labelledby="assignedTo-label"><g:link controller="user" action="show"
                                                                                        id="${taskInstance?.assignedTo?.id}">${taskInstance?.assignedTo?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${taskInstance?.id}"/>
            <g:link class="edit" action="edit" id="${taskInstance?.id}"><g:message code="default.button.edit.label"
                                                                                   default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
