//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Niv Suresh on 06/05/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                  .frame(height: 300)


            CircleImage(image: landmark.image)
                  .offset(y: -130)
                  .padding(.bottom, -130)


              VStack(alignment: .leading) {
                  Text(landmark.name)
                      .font(.title)


                  HStack {
                      Text(landmark.park)
                      Spacer()
                      Text(landmark.park)
                  }
                  .font(.subheadline)
                  .foregroundStyle(.secondary)


                  Divider()

                  ScrollView() {
                      Text("About \(landmark.name)")
                          .font(.title2).padding(10)
                      Text(landmark.description)
                  }
                  
              }
              .padding()

          }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])

}
