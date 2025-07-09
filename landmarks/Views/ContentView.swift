//
//  ContentView.swift
//  landmarks
//
//  Created by Sandeep Kulkarni on 09/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
