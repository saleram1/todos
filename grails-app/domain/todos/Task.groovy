package todos 

import groovy.transform.ToString

@ToString
class Task {
	String name
	String summary
	String description
	Date dueDate
	String projectName
	User assignedTo
	
		
	static constraints = {
		name(nullable: false, blank: false)
		summary(nullable: false, blank: false)
		description(widget: 'textarea')
		dueDate()
		projectName(nullable: true, blank: false)
		assignedTo(nullable: false)
	}
}