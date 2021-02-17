//
//  Task.swift
//  NightWatch
//
//  Created by Johnny Soto on 2/15/21.
//

import SwiftUI

class Task: ObservableObject {
    internal init(name: String, isComplete: Bool, lastCompleted: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
    
    let name: String
    @Published var isComplete: Bool
    var lastCompleted: Date?
}
