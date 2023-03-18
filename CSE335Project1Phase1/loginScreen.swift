//
//  loginScreen.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/14/23.
//

import SwiftUI

struct loginScreen: View {
    @State private var enteredUsername: String = ""
    @State private var enteredPassword: String = ""
    
    @StateObject var courseData:courseDictionary = courseDictionary();
    @StateObject var taskData:taskDictionary = taskDictionary();

    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    


                    //Add the days in reverse order

                    courseData.add_course("CSE 340", "Design North 60", [1, 0, 1, 0, 0, 0, 0], 990, 1065)
                    courseData.add_course("CSE 335", "Design North 60", [1, 0, 1, 0, 0, 0, 0], 600, 1065)
                    
                    taskData.add_task("Project 2", "CSE 340", Calendar.current.date(byAdding: .hour, value: -0, to: Date())!, 1439)


    
                    
                    
                }) {
                    Text("Test Input")
                }
                    VStack {
                        TextField("Enter username", text: $enteredUsername)
                        TextField("Enter password", text: $enteredPassword)
                        Text("Reset Password").frame(maxWidth: .infinity, alignment: .trailing)
                        NavigationLink(
                            destination: homeScreen(courseData: courseData, taskData: taskData
                            ),
                            label: {
                                Text("Sign In")
                            }).buttonStyle(.borderedProminent)
                            .navigationTitle("Home")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                        
                        
                        Text("Don't have an Account?").frame(maxWidth: .infinity, alignment: .trailing)
                        NavigationLink(
                            destination: loginScreen( courseData: courseData
                            ),
                            label: {
                                Text("Register")
                            }).buttonStyle(.borderedProminent)
                            .navigationTitle("Home")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                        

                        
                    }

            }
        }
        .padding()
    }
}

struct loginScreen_Previews: PreviewProvider {
    static var previews: some View {
        loginScreen()
    }
}
