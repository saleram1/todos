<%@ page import="todos.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="task.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${taskInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'summary', 'error')} ">
    <label for="summary">
        <g:message code="task.summary.label" default="Summary"/>

    </label>
    <g:textField name="summary" value="${taskInstance?.summary}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="task.description.label" default="Description"/>

    </label>
    <g:textArea name="description" cols="40" rows="5" value="${taskInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'dueDate', 'error')} required">
    <label for="dueDate">
        <g:message code="task.dueDate.label" default="Due Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="dueDate" precision="day" value="${taskInstance?.dueDate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'projectName', 'error')} ">
    <label for="projectName">
        <g:message code="task.projectName.label" default="Project Name"/>

    </label>
    <g:textField name="projectName" value="${taskInstance?.projectName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'assignedTo', 'error')} required">
    <label for="assignedTo">
        <g:message code="task.assignedTo.label" default="Assigned To"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="assignedTo" name="assignedTo.id" from="${todos.User.list()}" optionKey="id" required=""
              value="${taskInstance?.assignedTo?.id}" class="many-to-one"/>
</div>

