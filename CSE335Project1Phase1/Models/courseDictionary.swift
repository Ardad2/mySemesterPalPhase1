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
    
    func add_course( _ givenClassName:String, _ givenRoomName:String, _ givenDays:[Int], _ givenStartTime:Int, _ givenEndTime: Int)
    {
        list.append(courseRecord(className:givenClassName, roomName:givenRoomName, days:givenDays, startTime:givenStartTime, endTime:givenEndTime));
        
        let list = list.sorted(by: {$0.startTime! < $1.startTime!})
    }
}
