//
//  editCourse.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/18/23.
//

import Foundation

import SwiftUI



struct editCourse: View {
    
    
    
    @ObservedObject var courseData:courseDictionary = courseDictionary();
    @ObservedObject var taskData:taskDictionary = taskDictionary();
    
    @State var prevCourseName:String;
    @State var newCourseName:String;
    @State var newRoomName:String;
    @State var newStartTime:Date;
    @State var newEndTime:Date;
    @State var days:[Int];
    @State var message:String = ""

    
    @State private var isOn = false
    @State private var onMonday = false;
    @State private var onTuesday = false;
    @State private var onWednesday = false;
    @State private var onThursday = false;
    @State private var onFriday = false;
    @State private var onSaturday = false;
    @State private var onSunday = false;

    
    var body: some View {
        NavigationView{
            VStack(){
                HStack {
                    NavigationLink(
                        destination: homeScreen(courseData: courseData, taskData: taskData
                                               ),
                        label: {
                            Text("Home")
                        }).buttonStyle(.borderedProminent)
                        .navigationTitle("Home")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(true)
                    NavigationLink(
                        destination: myCourses(courseData: courseData, taskData: taskData
                                              ),
                        label: {
                            Text("Go Back to Courses")
                        }).buttonStyle(.borderedProminent)
                        .navigationTitle("Home")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(true)
                    
                }
                VStack(){
                    Text("Editing Course \(prevCourseName)")
                    Text("\(message)")
                    HStack() {
                        Text("Course Name: ")
                        TextField("Enter the course name", text: $newCourseName)
                        
                    }
                    HStack() {
                        Text("Course Location Name: ")
                        TextField("Enter the course name", text: $newRoomName)
                    }
                    HStack() {
                        Text("Timings")
                        HStack() {
                            DatePicker("Start Time", selection: $newStartTime, displayedComponents: .hourAndMinute);
                            DatePicker("End Time", selection: $newEndTime, displayedComponents: .hourAndMinute);
                            
                        }
                    }
                    VStack(){
                        HStack() {
                            Toggle(isOn: $onMonday)
                            {
                                Text("M")
                            }
                            Toggle(isOn: $onTuesday)
                            {
                                Text("T")
                            }
                            Toggle(isOn: $onWednesday)
                            {
                                Text("W")
                            }
                            Toggle(isOn: $onThursday)
                            {
                                Text("Th")
                            }
                        }
                        HStack() {
                            Toggle(isOn: $onFriday)
                            {
                                Text("F")
                            }
                            Toggle(isOn: $onSaturday)
                            {
                                Text("Sa")
                            }
                            Toggle(isOn: $onSunday)
                            {
                                Text("Su")
                            }
                            
                        }
                    }
                    
                    Button(action: {
                        if (onMonday)
                        {
                            days[0] = 1;
                        }
                        if (onTuesday)
                        {
                            days[1] = 1;
                        }
                        if (onWednesday)
                        {
                            days[2] = 1;
                        }
                        if (onThursday)
                        {
                            days[3] = 1;
                        }
                        if (onFriday)
                        {
                            days[4] = 1;
                        }
                        if (onSaturday)
                        {
                            days[5] = 1;
                        }
                        if (onSunday)
                        {
                            days[6] = 1;
                        }
                        
                        courseData.edit_course(prevCourseName, newCourseName, newRoomName, days, newStartTime, newEndTime)
                        taskData.update_task_class(prevCourseName, newCourseName)
                        message = "succesfully edited, new course is \(newCourseName)"
                    }) {
                        
                        Text("Submit")
                    }
                    
                }
            }
        }.navigationBarHidden(true)
    }
}




//courseData.add_course(newCourseName, newRoomName, days, startTime, endTime)

