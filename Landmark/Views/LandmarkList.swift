//
//  LandmarkList.swift
//  Landmark
//
//  Created by Niv Suresh on 06/05/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }.navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
        
     
    }
}

#Preview {
    LandmarkList()
}
