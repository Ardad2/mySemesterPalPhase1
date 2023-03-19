//
//  newCourse.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/18/23.
//

import Foundation

import SwiftUI



struct newCourse: View {
    
    
    
    @StateObject var courseData:courseDictionary = courseDictionary();
    @StateObject var taskData:taskDictionary = taskDictionary();
    
    @State var newCourseName:String = ""
    @State var newRoomName:String = ""
    @State var startTime:Date = Calendar.current.date(byAdding: .hour, value: +1, to: Date())!
    @State var endTime:Date = Calendar.current.date(byAdding: .hour, value: +1, to: Date())!
    @State var days = [0,0,0,0,0,0,0]
    
    @State private var isOn = false
    @State private var onMonday = false;
    @State private var onTuesday = false;
    @State private var onWednesday = false;
    @State private var onThursday = false;
    @State private var onFriday = false;
    @State private var onSaturday = false;
    @State private var onSunday = false;

    
    var body: some View {
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
                        DatePicker("Start Time", selection: $startTime, displayedComponents: .hourAndMinute);
                        DatePicker("End Time", selection: $endTime, displayedComponents: .hourAndMinute);
                        
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
                    courseData.add_course(newCourseName, newRoomName, days, startTime, endTime)
                }) {
                    
                    Text("Submit")
                }

        }
    }
    }
}




//courseData.add_course(newCourseName, newRoomName, days, startTime, endTime)

