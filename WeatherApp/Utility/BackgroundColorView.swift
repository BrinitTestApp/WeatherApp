//
//  BackgroundColorView.swift
//  WeatherApp
//
//  Created by Brinit on 26/08/25.
//

import SwiftUI

struct BackgroundColorView: View {
    
    
//MARK: - VARIABLES
 
    @Binding var isNight: Bool
    @State  var isAnimating:Bool = true
    
    var body: some View { // Error Failed to produce diagnostic for expression; please submit a bug repor
//MARK: - Background Configration
        
        LinearGradient(colors: [ isAnimating ? (isNight ? .black : .blue) : (isNight ? .gray : Color("lightBlue")),
                                 isAnimating ? (isNight ? .gray : Color("lightBlue")) : ( isNight ? .black : .blue)],
                       
                        startPoint: isAnimating ? .topLeading : .topTrailing,
                        endPoint: isAnimating ? .bottomLeading : .bottomTrailing)
                        .edgesIgnoringSafeArea(.all)
                        .onAppear(perform: startAnimation)

        
    }
    
    func startAnimation() {
        withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: true)) {
            self.isAnimating.toggle()
        }
    }
}
