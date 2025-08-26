//
//  WeatherDayView.swift
//  WeatherApp
//
//  Created by Brinit on 26/08/25.
//

import SwiftUI

struct WeatherDayView: View {
    
//MARK: - VARIABLES
    
    let dayName: [Int:String] = [1:"SUN",2:"MON",3:"TUE",4:"WED",5:"THU",6:"FRI",7:"SAT"]
    let dayCount: Int
    let imageName: String
    let temprature: Int
    
//MARK: - Day Configration
    var body: some View {
        VStack(spacing: 9) {
            Text(dayName[dayCount] ?? "Not Available")
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 40)
                .padding(.bottom, 10)
            Text("\(temprature)° C")
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(.white)
              
        }
    }
}
