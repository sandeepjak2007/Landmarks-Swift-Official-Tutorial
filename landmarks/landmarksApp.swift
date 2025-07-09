//
//  landmarksApp.swift
//  landmarks
//
//  Created by Sandeep Kulkarni on 09/07/25.
//

import SwiftUI

@main
struct landmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
