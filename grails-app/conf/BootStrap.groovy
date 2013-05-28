
import todos.User

class BootStrap {

    def init = { servletContext ->
	
		def testUser = new User(firstName: 'tech', lastName: 'agent',
								username: 'techagent', emailAddress: 'techagent@teachscape.com')
		testUser.save(failOnError: true)
								
		testUser = new User(firstName: 'noreen', lastName: 'costenbader',
								username: 'techagent', emailAddress: 'noreen@teachscape.com')

		testUser.save(failOnError: true)
	
		println "User.count() == " + User.count()
		println User.get(1)
		println User.get(2)
    }

    def destroy = {
    }
}
