//
//  Steppers.swift
//  SwiftUIBasicsObjects
//
//  Created by Manyuchi, Carrington C on 2024/08/24.
//

import SwiftUI

struct Steppers: View {
    
    @State private var stepperValue: Int = 10
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Stepper {
                        Text("Stepper: \(stepperValue)")
                    } onIncrement: {
                        stepperValue += 1
                    } onDecrement: {
                        stepperValue -= 1
                    } onEditingChanged: { _ in
                        
                    }
                    .padding(50)
                    
                    
                   // Stepper(Text("Value is: \(stepperValue)"), value: $stepperValue)

                }
            }
            .navigationTitle("Stepper")
        }
    }
}

#Preview {
    Steppers()
}
