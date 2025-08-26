//
//  BackgroundColorView.swift
//  WeatherApp
//
//  Created by Brinit on 26/08/25.
//

import SwiftUI

struct BackgroundColorView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(colors: [topColor,bottomColor],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
    }
}
