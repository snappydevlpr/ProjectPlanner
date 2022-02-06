//
//  DetailView.swift
//  ProjectPlanner
//
//  Created by Austin Suarez on 1/31/22.
//

import SwiftUI

struct DetailView: View {
    let scrum : DailyScrum
    var body: some View {
        List{
            Section(header:Text("Meeting Info")){
                NavigationLink(destination: MeetingView()){
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                
                HStack{
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                HStack{
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .accessibilityElement(children: .combine)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
            }
            Section(header: Text("Attendees")){
                ForEach(scrum.attendees){ attendee in
                    Label(attendee.name,systemImage: "person")
                }
            }
        
            
        }
        .navigationTitle(scrum.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
