//
//  ButtonConfiguration.swift
//  WeatherApp
//
//  Created by Brinit on 26/08/25.
//

import SwiftUI

struct ButtonConfiguration: View {
//MARK: - VARIABLES
    
    var name: String
    var fontColor: Color
    var width: CGFloat
    var height: CGFloat
    
    var body: some View{
        
//MARK: - Button Configration
        
        Text(name)
            .buttonStyle(.plain)
            .frame(width: width, height: height)
           
            .font(.system(size: 25, weight: .semibold))
            .foregroundStyle(fontColor)
        
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    
}
