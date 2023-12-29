//
//  CircleImage.swift
//  WeatherApp
//
//  Created by Dipprokash sardar on 29/12/23.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        image
            .frame(width: 200,height: 200)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay{
                Circle().stroke(.white,lineWidth: 4)
            }.shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("cute-image"))
}
