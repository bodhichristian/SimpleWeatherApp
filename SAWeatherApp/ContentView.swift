//
//  ContentView.swift
//  SAWeatherApp
//
//  Created by Christian Lavelle on 7/15/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNight: Bool = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            VStack(spacing: 50){
                
                CityTextView(cityName: "New York, NY")
                
                CurrentWeatherView(icon: isNight ? "moon.stars.fill" : "cloud.sun.fill", temp: 76)
                
                FiveDayForecast()
                
                Button {
                    isNight.toggle()
                        
                } label: {
                    DefaultButton(title: "Change Time of Day",
                                 textColor: .blue,
                                 backgroundColor: .white)
                    
                }
                
            }
            .padding(.bottom, 40)
            
            
            
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CityTextView: View {
    
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(25)
            .shadow(radius: 6)
    }
    
}



struct FiveDayForecast: View {
    
    var body: some View{
        HStack(spacing: 30) {
            DailyView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 76)
            DailyView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 82)
            DailyView(dayOfWeek: "THU", imageName: "sun.max.fill", temperature: 80)
            DailyView(dayOfWeek: "FRI", imageName: "wind", temperature: 76)
            DailyView(dayOfWeek: "SAT", imageName: "cloud.drizzle.fill", temperature: 76)
        }
        .shadow(radius: 2)
    }
}

