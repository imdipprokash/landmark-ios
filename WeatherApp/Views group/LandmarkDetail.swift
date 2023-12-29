//
//  LandmarkDetail.swift
//  WeatherApp
//
//  Created by Dipprokash sardar on 29/12/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y:-80)
                .padding(.bottom,-60)
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.blue)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                }
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                    .font(.subheadline)
                
            } .padding()
            
       
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
