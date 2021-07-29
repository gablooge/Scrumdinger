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
            ForEach(scrum, id: \.title) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.color)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrum: DailyScrum.data)
    }
}
