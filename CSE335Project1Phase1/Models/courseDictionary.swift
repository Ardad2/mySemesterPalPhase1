//
//  courseDictionary.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/18/23.
//

import Foundation

class courseDictionary: ObservableObject
{
    @Published var list:[courseRecord] = [courseRecord]();
    let calendar = Calendar.current
    
    init() {
        
    }
    
    /*
     var className:String? = nil;
     var roomName:String? = nil;
     var days = [0, 0, 0, 0, 0, 0, 0];
     var startTime:Int? = nil;
     var endTime: Int? = nil;
     */
    

    
    //ADD A COURSE
    
    func add_course( _ givenClassName:String, _ givenRoomName:String, _ givenDays:[Int], _ givenStartTime:Date, _ givenEndTime: Date)
    {
        list.append(courseRecord(className:givenClassName, roomName:givenRoomName, days:givenDays, startTime:givenStartTime, endTime:givenEndTime));
        
        list = list.sorted(by: {$0.startTime! < $1.startTime!})
    }
    
    func get_course(_ givenCourseName:String) -> courseRecord
    {
        for courses in list
        {
            if (courses.get_class_name() == givenCourseName)
            {
                return courses;
            }
        }
        return courseRecord(className: "F", roomName: "F", days: [0,0,0,0,0,0,0], startTime: Calendar.current.date(byAdding: .hour, value: +1, to: Date())!, endTime: Calendar.current.date(byAdding: .hour, value: +2, to: Date())!);
    }
}
