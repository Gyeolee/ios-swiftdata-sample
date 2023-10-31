//
//  SwiftDataSampleApp.swift
//  SwiftDataSample
//
//  Created by Hangyeol on 10/31/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataSampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
