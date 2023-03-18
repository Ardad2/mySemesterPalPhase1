//
//  loginScreen.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/14/23.
//

import SwiftUI

struct loginScreen: View {
    var body: some View {
        VStack {
            TextField(text:"Enter username");
        }
        .padding()
    }
}

struct loginScreen_Previews: PreviewProvider {
    static var previews: some View {
        loginScreen()
    }
}
