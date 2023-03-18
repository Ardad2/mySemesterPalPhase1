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

    
    var body: some View {
        NavigationView {
            Text("")

            .navigationBarItems(leading:
                HStack {
                    Button(action: {
                        print("Apple button tapped!")
                    }) {
                        Text("John")
                    }.padding()

                    Button("View Courses") {
                        print("View Courses button tapped!")
                    }

                }, trailing:
                    HStack {
                        Button(action: {
                            print("Settings button tapped!")
                        }) {
                            Text("Settings")
                        }
                    }
            )
        }.navigationBarHidden(true)

        VStack {
            VStack {
                    VStack {
                        Text("Welcome back John")
                        Text("Your next class is in 3 hours")

                        List {
                            Section(header: ListHeader())
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
