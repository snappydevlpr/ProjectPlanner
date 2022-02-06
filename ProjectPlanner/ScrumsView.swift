//
//  ScurmsView.swift
//  ProjectPlanner
//
//  Created by Austin Suarez on 1/29/22.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List{
            ForEach(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum:scrum)) {
                                   CardView(scrum: scrum)
                    }
                    .listRowBackground(scrum.theme.mainColor)
                }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                }
        .accessibilityLabel("New Scrum")

    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        //Adding the NavigationView displays navigation elements, like title and bar buttons, on the canvas. For now, the preview displays padding for a navigation title.

        NavigationView {
                    ScrumsView(scrums: DailyScrum.sampleData)
                }

    }
}
