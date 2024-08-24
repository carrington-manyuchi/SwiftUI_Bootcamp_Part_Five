//
//  TextEditor.swift
//  SwiftUIBasicsObjects
//
//  Created by Manyuchi, Carrington C on 2024/08/24.
//

import SwiftUI

struct TextEditorText: View {
    
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    TextEditor(text: $textEditorText)
                        .frame(height: 300) // Adjust the height as needed
                        .border(Color.gray, width: 1)
                    
                    Button(action:  {
                        savedText = textEditorText
                    }, label: {
                        Text("Save Text".uppercased())
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundStyle(.white)
                            .font(.title3)
                            .bold()
                            .cornerRadius(10)
                            .padding(.vertical)
                    })
                    Text(savedText)

                }
            }
            .navigationTitle("Text Editor")
            .padding()
        }
        
       
    }
}

#Preview {
    TextEditorText()
}
