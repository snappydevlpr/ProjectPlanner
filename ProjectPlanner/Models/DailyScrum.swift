//
//  DailyScrum.swift
//  ProjectPlanner
//
//  Created by Austin Suarez on 1/29/22.
//

import Foundation

struct DailyScrum: Identifiable{
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
          self.id = id
          self.title = title
            //map(_:) creates a new collection by iterating over and applying a transformation to each element in an existing collection.
          self.attendees = attendees.map{Attendee(name: $0)}
          self.lengthInMinutes = lengthInMinutes
          self.theme = theme
      }

}

//In DailyScrum.swift, create an extension with an inner structure named Attendee that is identifiable.
extension DailyScrum {
    struct Attendee: Identifiable{
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name:String){
            self.id = id
            self.name = name
        }
    }
}

//Add an extension that provides some sample data.

extension DailyScrum{
    static let sampleData : [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy)

    ]
}
