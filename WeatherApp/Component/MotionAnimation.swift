//
//  MotionAnimation.swift
//  WeatherApp
//
//  Created by Brinit on 26/08/25.
//

import SwiftUI

struct MotionAnimation: View {
    
    //MARK: - Variables
    
    @State private var randomCircle: Int = .random(in: 5...20)
    @State private var isAnimating: Bool = false
    
    
    //MARK: - Configration Background Animation Temprature
    
    //MARK: - Functions
    
    //Random Cordinate :
    func randomCordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    
    //Random Sizes
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 5...100)
    }
    //Random Scale
    func scale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    //Random Speed
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    //Random Delay
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                
                    .foregroundStyle(.white)
                    .opacity(0.25)
                    .frame(width: randomSize(),height: randomSize())
                    .position(x: randomCordinate()
                              ,y: randomCordinate())
                    .scaleEffect(isAnimating ? scale() : 1).scaledToFit()
                    .onAppear(perform: {
                        onAppearPerform()
                    })
                
                
            }
        }
//        .frame(width: .infinity)
//            .frame(height: 500)
    }
    func onAppearPerform(){
        
        withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25).repeatForever()
            .speed(randomSpeed())
            .delay(randomDelay())
                )
        {
            isAnimating = true
        }
            
        
    }
}

#Preview {
    MotionAnimation()
}
