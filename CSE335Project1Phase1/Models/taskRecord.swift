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
    var taskName:String
    var className:String
    var dueDate:Date;
    var dueTime:Int;
    
    init(mark:Bool, taskName:String, className:String, dueDate:Date, dueTime:Int)
    {
        self.mark = mark;
        self.taskName = taskName;
        self.className = className;
        self.dueDate = dueDate;
        self.dueTime = dueTime;
    }
    
    
    
    //Mark, Task Name, courseName, dueDate, duetime,
    
}
