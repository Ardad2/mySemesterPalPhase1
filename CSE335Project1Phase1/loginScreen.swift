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
    
    var body: some View {
        NavigationView {
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
                            destination: loginScreen(
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
