//
//  ContentView.swift
//  WeatherApp
//
//  Created by Brinit on 26/08/25.
//

import SwiftUI
import CoreLocation

struct WeatherView: View {
    
    @State private var isNight: Bool = true
    
    var body: some View{
        
        ZStack{
            BackgroundColorView(isNight: $isNight)
            ZStack{
                VStack{
                            
                            CityWeatherView(cityName: "Surat, GJ", dayImageName: "cloud.drizzle.fill", temprature: 30)
                    VStack{
                        HStack(spacing: 20){
                                WeatherDayView(dayCount: 1, imageName: "cloud.sun.fill", temprature: 30)
                                WeatherDayView(dayCount: 2, imageName: "cloud.bolt.rain.fill", temprature: 20)
                                WeatherDayView(dayCount: 3, imageName: "smoke.fill", temprature: 25)
                                WeatherDayView(dayCount: 4, imageName: "wind", temprature: 17)
                                WeatherDayView(dayCount: 5, imageName: "moon.stars.fill", temprature: 20)
                        }.padding()
                        Spacer()
                    }
                       
                    VStack{
                        
                        Button{
                            isNight.toggle()
                        } label: {
                            ButtonConfiguration(name: "Enter City Name", fontColor: .white.opacity(0.75), width: 280, height: 50)
                            Image(systemName: "chevron.forward.dotted.chevron.forward")
                                .foregroundStyle(.white)
                        
                        }.buttonStyle(.bordered)
                            .padding(30)
                        Spacer()
                    }

                  
                }
            }
    
            
        }
    }
    
}

#Preview {
    WeatherView()
}



