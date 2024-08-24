//
//  SliderCOMPONENT.swift
//  SwiftUIBasicsObjects
//
//  Created by Manyuchi, Carrington C on 2024/08/24.
//

import SwiftUI

struct SliderComponent: View {
    
    @State private var sliderValue: Double = 10
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Reading")
                   // Text("\(sliderValue)")
                    Text(String(format: "%.2f", sliderValue))
                   // Slider(value: $sliderValue)
                        
                    
                    //Slider(value: $sliderValue, in: 0...100)
                        .tint(.red)
                    
                    Slider(value: $sliderValue, in: 0...10, step: 0.25)
                        .padding(20)
                    
                }
            }
        }
    }
}

#Preview {
    SliderComponent()
}
