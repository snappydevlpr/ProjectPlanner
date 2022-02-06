//  CardView.swift
//  ProjectPlanner

//  CardView will summarize the DailyScrum model data and display the title, the number of
//  participants, and the duration. You’ll compose the CardView from smaller views, each of
//  which displays a piece of data in the DailyScrum structure.
//  Created by Austin Suarez on 1/29/22.



import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment:.leading){
            Text(scrum.title)
                .font(.headline)
                //This modifier helps convey the information architecture of the view by
                //reading the scrum title, followed by “heading.”
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")

                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)

        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum:scrum)
            .previewLayout(.fixed(width: 400, height: 60))
            .background(scrum.theme.mainColor)

    }
}
