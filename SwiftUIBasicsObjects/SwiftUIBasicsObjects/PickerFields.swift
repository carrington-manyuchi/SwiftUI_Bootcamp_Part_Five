//
//  PickerField.swift
//  SwiftUIBasicsObjects
//
//  Created by Manyuchi, Carrington C on 2024/08/24.
//

import SwiftUI

struct PickerFields: View {
    
    @State private var selection: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    
                    HStack {
                        Text("Age: ")
                        Text(selection)
                    }
                    
                    Picker(
                        selection: $selection) {
                            ForEach(18..<80) { number in
                                Text("\(number)")
                                    .tag("\(number)")
                            }
                        } label: {
                            Text("Picker")
                        }
                        Spacer()
                    
                    
                    Picker(
                        selection: $selection) {
                            ForEach(18..<22) { number in
                                Text("\(number)")
                                    .tag("\(number)")
                            }
                        } label: {
                            Text("Picker")
                        }
                        .pickerStyle(.segmented)

                    Spacer()
                }
            }
            .navigationTitle("PickerField")
        }
    }
}

#Preview {
    PickerFields()
}
