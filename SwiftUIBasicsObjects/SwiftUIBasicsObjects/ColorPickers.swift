//
//  ColorPickers.swift
//  SwiftUIBasicsObjects
//
//  Created by Manyuchi, Carrington C on 2024/08/24.
//

import SwiftUI

struct ColorPickers: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
                .padding(10)
                .background(Color(.black))
                .cornerRadius(10)
                .foregroundStyle(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

#Preview {
    ColorPickers()
}
