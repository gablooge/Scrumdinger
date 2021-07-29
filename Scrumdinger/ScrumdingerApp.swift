//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Samsul Hadi on 29/07/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
            WindowGroup {
                NavigationView {
                  ScrumsView(scrum: DailyScrum.data)
            }
        }
    }
}
