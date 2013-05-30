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
		summary(nullable: true, blank: false)
		description(nullable: true, widget: 'textarea')
		dueDate()
		projectName(nullable: true, blank: false)
		assignedTo(nullable: false)
	}
}