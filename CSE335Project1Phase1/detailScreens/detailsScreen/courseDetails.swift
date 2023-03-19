//
//  courseDetails.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/18/23.
//

import Foundation

import SwiftUI



struct courseDetails: View {
    var courseName:String
    
    
    @ObservedObject var courseData:courseDictionary = courseDictionary();
    @ObservedObject var taskData:taskDictionary = taskDictionary();

    
    var body: some View {
        NavigationView {
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
                            Text("Back")
                        }).buttonStyle(.borderedProminent)
                        .navigationTitle("Home")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(true)
                    
                }
                VStack(){
                    Text(courseData.get_course(courseName).get_class_name());
                    Text(courseData.get_course(courseName).get_room_name());
                    
                    HStack {
                        Text(courseData.get_course(courseName).get_start_time_string() + " to " + courseData.get_course(courseName).get_end_time_string());
                        HStack{
                            var days = courseData.get_course(courseName).get_days();
                            if (days[0] == 1)
                            {
                                Text("Monday ")
                            }
                            if (days[1] == 1)
                            {
                                Text("Tuesday ")
                            }
                            if (days[2] == 1)
                            {
                                Text("Wednesday ")
                            }
                            if (days[3] == 1)
                            {
                                Text("Thursday ")
                            }
                            if (days[4] == 1)
                            {
                                Text("Friday ")
                            }
                            if (days[5] == 1)
                            {
                                Text("Saturday ")
                            }
                            if (days[6] == 1)
                            {
                                Text("Sunday ")
                            }
                        }
                        Spacer();
                    }
                    
                    
                    HStack(){
                        NavigationLink(
                            destination: editCourse(courseData: courseData, taskData: taskData, prevCourseName: courseName, newCourseName: courseName, newRoomName: courseData.get_course(courseName).get_room_name(), newStartTime: courseData.get_course(courseName).get_start_time(), newEndTime: courseData.get_course(courseName).get_end_time(), days: courseData.get_course(courseName).get_days() ),
                            label: {
                                Text("Edit Course")
                            }).buttonStyle(.borderedProminent)
                            .navigationTitle("Home")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                        
                        Button(action: {
                            taskData.delete_course_tasks(courseName);
                            courseData.delete_course(courseName);
                            
                        }, label:{Text("Delete Course")})
                        
                    }
                    
                    //
                    
                    
                    //
                    NavigationLink(
                        destination: newTask(courseData: courseData, taskData: taskData, courseName: self.courseName),
                        label: {
                            Text("Add New Task")
                        }).buttonStyle(.borderedProminent)
                        .navigationTitle("Home")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(true)
                    
                    List {
                        Section(header: ListHeader2())
                        {
                            ForEach(taskData.list)
                            {
                                datum in
                                Group{
                                    if (datum.get_class_name() == courseName) {
                                        NavigationLink(destination: taskDetails(courseName: courseName, taskName:datum.get_task_name(), courseData: courseData, taskData: taskData)){
                                            VStack()
                                            {
                                                HStack {
                                                    Text(datum.get_task_name());
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
            }
        }.navigationBarHidden(true)
    }
}

/*struct courseDetails_Previews: PreviewProvider {
    static var previews: some View {
        courseDetails(picture:"Hi", name:"Hi", description:"A")
    }
}*/

struct ListHeader2: View {
    var body: some View {
        HStack {
            Text("TASK LIST ")
        }
    }
}

