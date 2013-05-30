package todos

class User {
	String firstName
	String middleInitial
	String lastName
	String emailAddress
	String username
	Boolean isActive = true
	

	static constraints = {
		username(nullable: false, blank: false, minSize: 6)
		firstName(nullable: false, blank: false)
		middleInitial(nullable: true, blank: false, maxSize: 1)
		emailAddress(nullable: false, blank: false, email: true)
	}
	
	String toString() {
		"${emailAddress}"
	}

}