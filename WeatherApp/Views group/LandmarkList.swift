//
//  LandmarkList.swift
//  WeatherApp
//
//  Created by Dipprokash sardar on 29/12/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationSplitView {
            List(landmarks,id:\.id){
               landmark in 
                NavigationLink{LandmarkDetail(landmark: landmark)}
            label:{
                LandmarkRow(landmark: landmark)
            }
                

            }
            .navigationTitle("Landmark")
        }detail:{
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
