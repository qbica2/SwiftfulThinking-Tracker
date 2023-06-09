//
//  DatePickerBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 9.06.2023.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2022)) ?? Date()
    
    let endingDate: Date = Date()
    
    var dateFormatted: DateFormatter {
        let formatter = DateFormatter()
        
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        
        return formatter
    }

    var body: some View {
//        DatePicker("Select a Date", selection: $selectedDate)
//        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date])
//        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.hourAndMinute])
//            .tint(.red)
////            .datePickerStyle(.compact)
////            .datePickerStyle(.graphical)
////            .datePickerStyle(.wheel)
//            .datePickerStyle(.automatic)
        
        VStack {
            Text("Selected date is: ")
            Text(dateFormatted.string(from: selectedDate))
            
            DatePicker("Select a date", selection: $selectedDate , in: startingDate...endingDate)

        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
