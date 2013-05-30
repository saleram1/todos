package todos

import org.springframework.dao.DataIntegrityViolationException

class TaskSearchController {
	
	def index() { redirect action: 'search'}

    def search() {

		[taskSearchCommandInstance: new TaskSearchCommand() ]
    }
	    def doSearch(TaskSearchCommand command) {
			if (!command.validate()) {
				flash.message =""
				redirect action: 'search'
			}
			else {
		     	render view: 'listResults',
		 		  model: [taskInstanceList: Task.findAllByNameLike( '%' + command?.name?.trim() + '%')]			
			}
	    }
}


class TaskSearchCommand {
      String name
      static constraints = {
          name(nullable: false, blank: false, minSize: 5)
      }
}
