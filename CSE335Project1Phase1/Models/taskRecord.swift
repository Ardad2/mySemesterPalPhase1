//
//  taskModel.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/18/23.
//

import Foundation

class taskRecord: Identifiable
{
    let id = UUID()
    
    var mark:Bool
    var taskName:String? = nil;
    var className:String? = nil;
    var dueDate:Date? = nil;

    init(taskName:String, className:String, dueDate:Date)
    {
        self.mark = false;
        self.taskName = taskName;
        self.className = className;
        self.dueDate = dueDate;
    }
    
    func change_task(newTaskName:String, newDueDate:Date)
    {
        self.taskName = newTaskName;
        self.dueDate = newDueDate;
    }
    
    func toggle_mark()
    {
        if (self.mark == false)
        {
            self.mark = true;
        }
        else {
            self.mark = false;
        }
    }
    
    func get_task_name() -> String
    {
        return self.taskName!
    }
    
    func get_class_name() -> String
    {
        return self.className!
    }
    
    func get_due_date() -> Date
    {
        return self.dueDate!;
    }
    

    
    //Mark, Task Name, courseName, dueDate, duetime,
    
}
