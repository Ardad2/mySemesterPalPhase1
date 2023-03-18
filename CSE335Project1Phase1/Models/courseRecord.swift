//
//  courseModel.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/18/23.
//

import Foundation

class courseRecord: Identifiable
{
    let id = UUID()
    var className:String? = nil;
    var roomName:String? = nil;
    var days = [0, 0, 0, 0, 0, 0, 0];
    var startTime:Int? = nil;
    var endTime: Int? = nil;
    var taskList: taskDictionary;
    
    init(className:String, roomName:String, days:[Int], startTime:Int, endTime:Int)
    {
        self.className = className;
        self.roomName = roomName;
        self.days = days;
        self.startTime = startTime;
        self.endTime = endTime;
        self.taskList = taskDictionary()
    }
    
    //Change
    
    func change_record(newClassName:String, newRoomName:String, newDays:[Int], newStartTime:Int, newEndTime:Int)
    {
        self.className = newClassName;
        self.roomName = newRoomName;
        self.days = newDays;
        self.startTime = newStartTime;
        self.endTime = newEndTime;
    }
    
    //Get class Name
    
    func get_class_name() -> String {
        return self.className!;
    }
    
    func get_room_name() -> String {
        return self.roomName!;
    }
    
    func get_days() -> [Int] {
        return self.days;
    }
    
    func get_start_time() -> Int {
        return self.startTime!
    }
    
    func get_end_time() -> Int {
        return self.endTime!;
    }
    
    
    
}
