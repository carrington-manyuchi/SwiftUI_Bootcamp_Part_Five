//
//  DatePickerBootcamp.swift
//  SwiftUIBasicsObjects
//
//  Created by Manyuchi, Carrington C on 2024/08/24.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State private var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2020)) ?? Date()
    let endingDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Spacer()
                    HStack {
                        Text("Selected date is")
                            .font(.title2)
                            .bold()
                        Text(dateFormatter.string(from: selectedDate))
                        
                    }
                    DatePicker("Select a date", selection: $selectedDate)
                        .datePickerStyle(.automatic)
                    
                    Spacer()
                    DatePicker("SELECT THE DATE ", selection: $selectedDate, displayedComponents: .date)
                        
                    Spacer()
                    DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: .date)
                        .datePickerStyle(.compact)
                    Spacer()
                }
            }
            .navigationTitle("Dates Selections")
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
