//
//  SwiftUIView.swift
//  SAWeatherApp
//
//  Created by Christian Lavelle on 7/15/22.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var isNight: Bool
 
    
    var body: some View {
            
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}


