//
//  homeScreen.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/14/23.
//

import Foundation

import SwiftUI

struct homeScreen: View {
    @State private var enteredUsername: String = ""
    @State private var enteredPassword: String = ""
    
    @StateObject var courseData:courseDictionary = courseDictionary();
    @StateObject var taskData:taskDictionary = taskDictionary();

    
    var body: some View {
        NavigationView {


        VStack {
            HStack {
                NavigationLink(
                    destination: myCourses(courseData: courseData, taskData: taskData
                    ),
                    label: {
                        Text("John")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                NavigationLink(
                    destination: myCourses(courseData: courseData, taskData: taskData
                                          ),
                    label: {
                        Text("View Courses")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                NavigationLink(
                    destination: myCourses(courseData: courseData, taskData: taskData
                    ),
                    label: {
                        Text("Settings")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
            }
            VStack {
                    VStack {
                        Text("Welcome back John")
                        Text("Your next class is in [Not implemented yet] hours")

                        List {
                            Section(header: ListHeader())
                            {
                                ForEach(taskData.list)
                                {
                                    datum in NavigationLink(destination: taskDetails(courseName: datum.get_class_name(), taskName:datum.get_task_name(), courseData: courseData, taskData: taskData)){VStack()
                                    {
                                        HStack {
                                            Text(datum.get_task_name());
                                            Text(datum.get_class_name());
                                            Text(datum.get_due_date_string())
                                            Spacer();
                                        }
                                    }
                                }
                                }
                            }
                        }
                    }

            }
        }
    }.navigationBarHidden(true)

    }
}

struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        homeScreen()
    }
}

struct ListHeader: View {
    var body: some View {
        HStack {
            Text("TASK LIST ")
        }
    }
}
