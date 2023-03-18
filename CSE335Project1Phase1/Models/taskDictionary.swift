//
//  taskDictionary.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/18/23.
//

import Foundation

func isSameDay(date1: Date, date2: Date) -> Bool {
    let diff = Calendar.current.dateComponents([.day], from: date1, to: date2)
    if diff.day == 0 {
        return true
    } else {
        return false
    }
}

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
    
    func add_task( _ givenTaskName:String, _ givenClassName:String, _ givenDueDate: Date)
    {
        list.append(taskRecord(taskName: givenTaskName, className: givenClassName, dueDate: givenDueDate))
        
        //let list = list.sorted(by: {{lhs, rhs} in if lhs.dueDate == rhs.dueDate})
        
        list = list.sorted { (lhs, rhs) in
            return lhs.get_due_date() < rhs.get_due_date()
        }
    }

}
