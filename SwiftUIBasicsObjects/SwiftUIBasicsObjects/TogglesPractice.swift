//
//  TogglesPractice.swift
//  SwiftUIBasicsObjects
//
//  Created by Manyuchi, Carrington C on 2024/08/24.
//

import SwiftUI

struct TogglesPractice: View {
    
    @State private var toggleIsOn: Bool = true
    
    var body: some View {
        NavigationView(content: {
            ZStack {
                VStack {
                    HStack {
                        Text("Status")
                        Text(toggleIsOn ? "Online" : "Offline")
                    }
                    Toggle(isOn: $toggleIsOn) {
                        Text("Male")
                    }
                    
                    Toggle(
                        isOn: .constant(true),
                        label: {
                        Text("Label")
                    })
                    .toggleStyle(SwitchToggleStyle(tint: .purple))
                }
            }
        })
    }
}

#Preview {
    TogglesPractice()
}
