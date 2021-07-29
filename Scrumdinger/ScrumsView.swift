//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Samsul Hadi on 29/07/21.
//

import SwiftUI

struct ScrumsView: View {
    let scrum: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrum) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                CardView(scrum: scrum)
                }
               .listRowBackground(scrum.color)
            }
        }
        .navigationTitle("Daily Scrums")
        .navigationBarItems(trailing: Button(action: {}) {
            Image(systemName: "plus")
        })
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ScrumsView(scrum: DailyScrum.data)
        }
    }
}

