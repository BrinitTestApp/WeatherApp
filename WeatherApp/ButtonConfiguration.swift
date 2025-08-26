//
//  ButtonConfiguration.swift
//  WeatherApp
//
//  Created by Brinit on 26/08/25.
//

import SwiftUI

struct ButtonConfiguration: View {
    
    var name: String
    var fontColor: Color
    var backgroundColor: Color
    var width: CGFloat
    var height: CGFloat
    
    var body: some View{
        
        Text(name)
            .frame(width: width, height: height)
            .font(.system(size: 25, weight: .semibold))
            .foregroundStyle(fontColor)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    
}
