//
//  MVPApp.swift
//  MVP
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI
import SwiftData

@main
struct MVPApp: App {
    @AppStorage("isFirstTimeLaunch") private var isFirstTimeLaunch: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(ItemsContainer.create(shouldCreateDefaults: &isFirstTimeLaunch))
        
    }
}
