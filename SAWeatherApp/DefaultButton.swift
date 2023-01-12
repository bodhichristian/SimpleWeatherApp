//
//  DefaultButton.swift
//  SAWeatherApp
//
//  Created by Christian Lavelle on 7/15/22.
//

import SwiftUI

struct DefaultButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(20)
    }
}

