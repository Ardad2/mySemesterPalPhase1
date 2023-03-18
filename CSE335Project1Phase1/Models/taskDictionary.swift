//
//  taskDictionary.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/18/23.
//

import Foundation

class taskDictionary: ObservableObject
{
    @Published var list:[taskRecord] = [taskRecord]();
    let calendar = Calendar.current
    
    init() {
        
    }
    
    /*
     var mark:Bool
     var taskName:String
     var className:String
     var dueDate:Date;
     var dueTime:Int;
     */
    

    
    //ADD A COURSE
    
    func add_task( _ givenTaskName:String, _ givenClassName:String, _ givenDueDate: Date, _ givenDueTime:Int)
    {
        list.append(taskRecord(taskName: givenTaskName, className: givenClassName, dueDate: givenDueDate, dueTime: givenDueTime));
        
        let list = list.sorted(by: {{lhs, rhs} in if lhs.dueDate == rhs.dueDate})
    }
}
