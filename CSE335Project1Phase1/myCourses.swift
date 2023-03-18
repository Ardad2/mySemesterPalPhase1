//
//  homeScreen.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/14/23.
//

import Foundation

import SwiftUI

struct myCourses: View {
    @State private var enteredUsername: String = ""
    @State private var enteredPassword: String = ""
    
    @StateObject var courseData:courseDictionary = courseDictionary();
    @StateObject var taskData:taskDictionary = taskDictionary();

    
    var body: some View {
        NavigationView {


        VStack {
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
            VStack {
                Text("My Courses")

                    VStack {
                        List {
                            Section(header: ListHeader1())
                            {
                                ForEach(courseData.list)
                                {
                                    datum in VStack()
                                    {
                                        HStack {
                                            Text(datum.get_class_name());
                                            Spacer();
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

struct myCourses_Previews: PreviewProvider {
    static var previews: some View {
        myCourses()
    }
}

struct ListHeader1: View {
    var body: some View {
        HStack {
            Text("COURSE LIST ")
        }
    }
}

