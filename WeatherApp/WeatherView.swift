//
//  ContentView.swift
//  WeatherApp
//
//  Created by Brinit on 26/08/25.
//

import SwiftUI

struct WeatherView: View {
    
    var body: some View{
        
        ZStack{
            BackgroundColorView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack{
                CityWeatherView(cityName: "Surat, GJ", dayImageName: "cloud.drizzle.fill", temprature: 30)
                VStack{
                    HStack(spacing: 20){
                            WeatherDayView(dayCount: 1, imageName: "cloud.sun.fill", temprature: 30)
                            WeatherDayView(dayCount: 2, imageName: "cloud.bolt.rain.fill", temprature: 20)
                            WeatherDayView(dayCount: 3, imageName: "smoke.fill", temprature: 25)
                            WeatherDayView(dayCount: 4, imageName: "wind", temprature: 17)
                            WeatherDayView(dayCount: 5, imageName: "moon.stars.fill", temprature: 20)
                    }.padding(.top,20)
                }
                    Spacer()
                VStack{
                    
                    Button{
                        print("Tapped")
                    } label: {
                        ButtonConfiguration(name: "Enter City Name", fontColor: .blue, backgroundColor: .white, width: 280, height: 50)
                    
                    }
                }

                Spacer()
            }
    
            
        }
    }
    
}

#Preview {
    WeatherView()
}



