//
//  LandmarkList.swift
//  landmarks
//
//  Created by Sandeep Kulkarni on 09/07/25.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavouriteOnly = false
    var filteredLandMarks : [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavouriteOnly || landmark.isFavorite)
            
        }
    }
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavouriteOnly){
                    Text("Show favorite only")
                }
                ForEach(filteredLandMarks){ landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label:{
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandMarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
