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
    
    init(className:String, roomName:String, days:[Int], startTime:Int, endTime:Int)
    {
        self.className = className;
        self.roomName = roomName;
        self.days = days;
        self.startTime = startTime;
        self.endTime = endTime;
    }
}
