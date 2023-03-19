//
//  taskDetails.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/18/23.
//

import Foundation

import SwiftUI



struct taskDetails: View {
    var courseName:String
    var taskName:String
    
    
    @StateObject var courseData:courseDictionary = courseDictionary();
    @StateObject var taskData:taskDictionary = taskDictionary();

    
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

            }
        VStack(){
            Text(taskData.get_task(taskName, courseName).get_task_name());
            Text(taskData.get_task(taskName, courseName).get_class_name());
            Text("DUE: " + taskData.get_task(taskName, courseName).get_due_date_string());
            if (taskData.get_task(taskName, courseName).get_mark() == true)
            {
                Text("DONE");
            }
            else {
                Text("NOT DONE");
            }
            
        }
    }
    }
}

/*struct courseDetails_Previews: PreviewProvider {
    static var previews: some View {
        courseDetails(picture:"Hi", name:"Hi", description:"A")
    }
}*/
