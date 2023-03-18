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
            Text(courseData.get_course(courseName).get_class_name());
        }
    }
    }
}

/*struct courseDetails_Previews: PreviewProvider {
    static var previews: some View {
        courseDetails(picture:"Hi", name:"Hi", description:"A")
    }
}*/
