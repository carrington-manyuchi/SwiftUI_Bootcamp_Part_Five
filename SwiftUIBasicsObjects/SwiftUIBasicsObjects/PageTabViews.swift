//
//  PageTabViews.swift
//  SwiftUIBasicsObjects
//
//  Created by Manyuchi, Carrington C on 2024/08/24.
//

import SwiftUI

struct PageTabViews: View {
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        TabView {
            
            ForEach(icons, id: \.self) { icon  in
                Image(systemName: icon)
                    
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.yellow.opacity(0.5))
                    .padding(50)
            }
            
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.blue)
//            RoundedRectangle(cornerRadius: 25.0)
                
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.blue, Color.red]), center: .center, startRadius: 3, endRadius: 200)
        )
        .frame(height: 300)
        .tabViewStyle(.page)
        .padding()
        .cornerRadius(100)
    }
}

#Preview {
    PageTabViews()
}
