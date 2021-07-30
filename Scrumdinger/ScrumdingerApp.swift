//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Samsul Hadi on 29/07/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.data
    var body: some Scene {
            WindowGroup {
                NavigationView {
                  ScrumsView(scrums: $scrums)
            }
        }
    }
}
