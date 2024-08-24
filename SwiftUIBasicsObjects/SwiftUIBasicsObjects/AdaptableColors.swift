//
//  AdaptableColors.swift
//  SwiftUIBasicsObjects
//
//  Created by Manyuchi, Carrington C on 2024/08/24.
//

import SwiftUI

struct AdaptableColors: View {
    var body: some View {
        NavigationStack {
           
                ScrollView {
                    
                    VStackLayout(spacing: 20) {
                        Text("This color is PRIMARY")
                            .foregroundStyle(.primary)
                        Text("This color is SECONDARY")
                            .foregroundStyle(.secondary)
                        Text("This color is BLACK")
                            .foregroundStyle(.black)
                        Text("This color is WHITE")
                            .foregroundStyle(.white)
                        Text("This color is LABEL")
                            .foregroundStyle(Color(.label))
                        Text("This color is SystemBackGround")
                            .foregroundStyle(Color(.systemBackground))
                    }
                    .padding(.top, 50)
                }
            }
        
    }
}

#Preview {
    AdaptableColors()
}
