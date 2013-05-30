<%@ page import="todos.Task" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<p>&nbsp;</p>
		</div>

		<div id="create-task" class="content scaffold-create" role="main">
			<h1>Task Search</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${taskSearchCommandInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${taskSearchCommandInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>

			</g:hasErrors>

			<g:form action="doSearch" method="post" name="defaultForm1">
				<fieldset class="form">


				<div class="fieldcontain ${hasErrors(bean: taskSearchCommandInstance, field: 'name', 'error')} required">
					<label for="name">
						<g:message code="task.name.label" default="Name" />
						<span class="required-indicator">*</span>
					</label>
					<g:textField name="name" required="" value="${taskSearchCommandInstance?.name}"/>
				</div>


				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="Search" value="Search" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
