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
    var dueTime:Int? = nil;
    
    init(taskName:String, className:String, dueDate:Date, dueTime:Int)
    {
        self.mark = false;
        self.taskName = taskName;
        self.className = className;
        self.dueDate = dueDate;
        self.dueTime = dueTime;
    }
    
    func change_task(newTaskName:String, newDueDate:Date, newDueTime:Int)
    {
        self.taskName = newTaskName;
        self.dueDate = newDueDate;
        self.dueTime = newDueTime;
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
    
    func get_due_date_string() -> String
    {
        let ownDate = self.dueDate;
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .short;
        
        var result = formatter1.string(from: ownDate!);
        
        return result;
    }
    
    func get_due_time()
    {
        return self.dueTime
    }
    
    
    
    //Mark, Task Name, courseName, dueDate, duetime,
    
}
