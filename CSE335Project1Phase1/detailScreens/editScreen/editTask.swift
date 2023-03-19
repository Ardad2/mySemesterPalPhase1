//
//  editTask.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/18/23.
//

import Foundation

import SwiftUI



struct editTask: View {
    
    
    
    @StateObject var courseData:courseDictionary = courseDictionary();
    @StateObject var taskData:taskDictionary = taskDictionary();
    
    @State var prevTaskName:String;
    @State var newTaskName:String;
    @State var courseName:String;
    @State var newDueDate:Date;
    
    
    
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
                    destination: courseDetails(courseName: self.courseName, courseData: courseData, taskData: taskData
                                              ),
                    label: {
                        Text("Go Back to Course")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
            }
            VStack(){
                
                HStack() {
                    Text("Task Name: ")
                    TextField("Enter the course name", text: $newTaskName)
                    
                }
                HStack() {
                    Text("Course: ")
                    Text("\(courseName)")
                }
                HStack() {
                    Text("Timings")
                    HStack() {
                        DatePicker("Due Date", selection: $newDueDate );
                        
                    }
                }
                VStack(){
                    
                    Button(action: {
                        
                        taskData.edit_task(prevTaskName, newTaskName, newDueDate)
                    }) {
                        
                        Text("Submit")
                    }
                    
                }
            }
        }
    }
}
