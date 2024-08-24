//
//  ContentView.swift
//  SwiftUIBasicsObjects
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//

import SwiftUI

struct TextFields: View {
    
    @State var nameTextFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                
               TextField("Enter your name", text: $nameTextFieldText)
                   
                   // .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .font(.headline)
                    .padding(.bottom, 20)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray.opacity(0.6))
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
            }
            .padding()
            .navigationTitle("TextFields Bootcamp")
        }
    }
    
    func textIsAppropriate() -> Bool {
        // check if text is 3 charaters long
        if nameTextFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(nameTextFieldText)
        nameTextFieldText = ""

    }
}

#Preview {
    TextFields()
}
