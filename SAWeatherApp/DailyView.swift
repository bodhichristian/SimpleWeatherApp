//
//  DailyView.swift
//  SAWeatherApp
//
//  Created by Christian Lavelle on 7/15/22.
//

import SwiftUI

struct DailyView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(.white)

            
            Text("\(temperature)°")
                .font(.system(size: 28))
                .bold()
                .foregroundColor(.white)

        }
    }
}
