//
//  courseDictionary.swift
//  CSE335Project1Phase1
//
//  Created by Arjun Dadhwal on 3/18/23.
//

import Foundation

class courseDictionary: ObservableObject
{
    @Published var list:[courseRecord] = [courseRecord]();
    let calendar = Calendar.current
    
    init() {
        
    }
}
