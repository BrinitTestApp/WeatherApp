//
//  CityWeatherView.swift
//  WeatherApp
//
//  Created by Brinit on 26/08/25.
//

import SwiftUI

struct CityWeatherView: View{
    
    //MARK: - VARIABLES
    
    var cityName: String
    var dayImageName: String
    var temprature: Int
    var body: some View {
        
        // MARK: - City Configration
        
        ZStack {
            MotionAnimation()
            VStack {
                HStack{
                    Text(cityName)
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundStyle(.white)
                        .padding(1)
                    Image(systemName: "location.fill")
                        .foregroundStyle(.white)
                    
                } .padding(20)
                    VStack(spacing: 20){
                        Image(systemName: dayImageName)
                            .renderingMode(.original)      .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180, height: 180)
                        
                        Text("\(temprature)° C")
                            .font(.system(size: 70, weight: .semibold))
                            .foregroundStyle(.white)
                    }
                    
                }
        
        }
    
        
            
            
    }
}
