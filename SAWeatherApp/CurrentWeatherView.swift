//
//  CurrentWeatherView.swift
//  SAWeatherApp
//
//  Created by Christian Lavelle on 7/15/22.
//

import SwiftUI

struct CurrentWeatherView: View {
    
    var icon: String
    var temp: Int
    
    var body: some View{
        VStack(spacing: 8) {
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temp)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .shadow(radius: 8)
    }
}
