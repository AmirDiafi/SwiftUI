//
//  DatePickers.swift
//  App
//
//  Created by AmirDiafi on 6/28/22.
//

import SwiftUI

struct DatePickers: View {
    @State var date: Date = Date()
    var startingDate: Date = Calendar.current.date(from: DateComponents(year: 3000)) ?? Date()
    var endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Hello! today is: \(dateFormatter.string(from: date))")
            DatePicker(
                "pick a date",
                selection: $date,
                in: Date()...startingDate,
                displayedComponents: [.date]
            )
            .datePickerStyle(DefaultDatePickerStyle())
            .padding()
                
        }
    }
}

struct DatePickers_Previews: PreviewProvider {
    static var previews: some View {
        DatePickers()
    }
}
