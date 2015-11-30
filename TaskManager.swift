import UIKit

var taskMgr : TaskManager = TaskManager()

struct task {
    var name = "name"
    var desc = "description"
}

class TaskManager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }
}
