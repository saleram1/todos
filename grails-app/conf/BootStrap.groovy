
import todos.Task
import todos.User

class BootStrap {

    def init = { servletContext ->
	
		def testUser = new User(firstName: 'tech', lastName: 'agent',
								username: 'techagent', emailAddress: 'techagent@teachscape.com')
		testUser.save(failOnError: true)
								
		testUser = new User(firstName: 'noreen', lastName: 'costenbader',
								username: 'techagent', emailAddress: 'noreen@teachscape.com')

		testUser.save(failOnError: true)
	
		
		new Task(assignedTo: testUser, name: "wash my socks", dueDate: new Date()+10).save(failOnError: true)
		new Task(assignedTo: testUser, name:  "fix some fires", dueDate: new Date()+10).save()
		new Task(assignedTo: testUser, name:  "UPDATE jiras", dueDate: new Date()+10).save()
		new Task(assignedTo: testUser, name:  "UPDATE grocery list for dinner", dueDate: new Date()+10).save()
		new Task(assignedTo: testUser, name:  "wash my socks again", dueDate: new Date()+10).save(flush: true)

		println "Task.count() == " + Task.count()
		println "User.count() == " + User.count()
		println User.get(1)
		println User.get(2)

    }

    def destroy = {
    }
}
