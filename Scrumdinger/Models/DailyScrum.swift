//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Samsul Hadi on 29/07/21.
//

import SwiftUI


struct  DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
    }
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Saimon", "Jonathan"], lengthInMinutes: 10, color: Color(red: 0, green: 255, blue: 255)),
            DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla",], lengthInMinutes: 5, color: Color(red: 255, green: 255, blue: 0)),
            DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Cristina", "Eden", "Carla", "Lindsey", "Aga", "Chad", "Jen", "Sarah"], lengthInMinutes: 1, color: Color(red: 0, green: 255, blue: 0))
        ]
    }
}


extension DailyScrum {
    struct Data {
        var title : String = ""
        var attendees : [String] = []
        var lengthInMinutes : Double = 5.0
        var color : Color = .random
       }
    var data: Data {
        return Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), color: color)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
        lengthInMinutes = Int (data.lengthInMinutes)
        color = data.color
        
    }
}

    

