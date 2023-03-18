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
    
    var body: some View {
        VStack {
            VStack {
                    VStack {
                        TextField("Enter username", text: $enteredUsername)
                        TextField("Enter password", text: $enteredPassword)
                        Text("Reset Password").frame(maxWidth: .infinity, alignment: .trailing)
                        NavigationLink(
                            destination: homeScreen(
                            ),
                            label: {
                                Text("Sign In")
                            }).buttonStyle(.borderedProminent)
                            .navigationTitle("Home")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                        
                        
                        Text("Don't have an Account?").frame(maxWidth: .infinity, alignment: .trailing)
                        NavigationLink(
                            destination: homeScreen(
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

struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        homeScreen()
    }
}
