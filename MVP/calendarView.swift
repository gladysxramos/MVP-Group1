//
//  calendarView.swift
//  MVP
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI
import Foundation

//calendar code
extension Date {
    func getAllDates() -> [Date] {
        let calendar = Calendar.current
        
        // get start date
        let startDate = calendar.date(from: calendar.dateComponents([.year, .month], from: self))!
        
        let range = calendar.range(of: .day, in: .month, for: self)!
        
        return range.compactMap { day -> Date in
            calendar.date(byAdding: .day, value: day - 1, to: startDate)!
        }
    }
}

struct DateValue: Identifiable {
    var id = UUID().uuidString // a unique identifier to make this struct conform to the Identifiable protocol
    var day: Int // date in number format
    var date: Date
}

struct CustomDatePicker: View {
    // variable to keep track of what date a user clicks on
    @Binding var selectedDate: Date
    
    @State private var month = 0
    @State private var currentDisplayedMonth = Date()
    
    let daysOfWeek = ["S", "M", "T", "W", "T", "F", "S"]
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    
    var body: some View {
        VStack {
            HStack {
                // show the previous month
                Button {
                    month -= 1
                } label: {
                    Image(systemName: "chevron.left") // <-- you can use any image you like!
                        .foregroundColor(Color(red: 71/255, green: 132/255, blue: 46/255, opacity: 1.0)) // <-- if not using a system symbol, this isn't necessary
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    // display the shown month and year
                    Text("\(extractMonthYear())")
                    
                    // display days of week
                    HStack(spacing: 0) {
                        ForEach(daysOfWeek.indices, id:\.self) { day in
                            Text(daysOfWeek[day])
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    // display dates in numbers
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(extractDates()) { value in
                            VStack(spacing: 0) {
                                if value.day != -1 {
                                    ZStack {
                                        Circle()
                                            .fill(selectedDate == value.date ? .green.opacity(0.3) : .clear) // using a ternary operator!
                                            
                                        Text("\(value.day)")
                                            .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255, opacity: 1.0))
                                    }
                                    .frame(width: 30, height: 30)
                                }
                            }
                            .onTapGesture {
                                // update the selected date
                                selectedDate = value.date
                            }
                        }
                    }
                }
                
                // show the next month
                Button {
                    month += 1
                } label: {
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(red: 71/255, green: 132/255, blue: 46/255, opacity: 1.0)) // <-- you can use any image you like!
                }
            }
        }
        .onChange(of: month) {
            // update the month to display
            currentDisplayedMonth = getCurrentMonth()
        }
    }
    
    // check whether a date is the same as today
    func isToday(date: Date) -> Bool {
        return Calendar.current.startOfDay(for: Date()) == Calendar.current.startOfDay(for: date)
    }
    
    // extract month and year to display
    func extractMonthYear() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM YYYY"
        return formatter.string(from: currentDisplayedMonth)
    }
    
    // update to a new month
    func getCurrentMonth() -> Date {
        guard let currentMonth = Calendar.current.date(byAdding: .month, value: month, to: Date()) else { return Date() }
        return currentMonth
    }
    
    // get an array of all dates in a given month
    func extractDates() -> [DateValue] {
        let currentMonth = getCurrentMonth()
        var dates = currentMonth.getAllDates().compactMap { date -> DateValue in
            let day = Calendar.current.component(.day, from: date)
            return DateValue(day: day, date: date)
        }
        
        // add offset days
        let firstWeekDay = Calendar.current.component(.weekday, from: dates.first?.date ?? Date())
        
        for _ in 0..<firstWeekDay-1 {
            dates.insert(DateValue(day: -1, date: Date()), at: 0)
        }
        
        return dates
    }
}

//this section should go into the calendarView struct
struct calendarView: View {

    @State var selectedDate = Date()
    
    var body: some View {
        NavigationStack{
            ZStack (alignment: .bottom){
                Color(red: 247/255, green: 240/255, blue: 233/255)
                    .ignoresSafeArea()
                VStack {
                        Text ("Calendar Archive")
                            .font(Font.custom("Times New Roman MT Condensed Italic", size: 60))
                            .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                        CustomDatePicker(selectedDate: $selectedDate)
                            .padding()
                            .font(Font.custom("AtkinsonHyperlegible-Regular", size: 20))
                            .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                        .background(Rectangle())
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.horizontal)
                        
                    Text(selectedDate.formatted(date: .abbreviated, time: .omitted)+"'s Outfit")
                        .font(Font.custom("AtkinsonHyperlegible-Regular", size: 30))
                        .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                    // <-- you can customize (or omit it altogether) however you like!
                    ScrollView{
                        VStack(alignment:.leading){
                            Text("                                                                                           ")
                            Text("Top:")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                                .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                                .padding(.leading)
                            Text("Bottom:")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                                .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                                .padding(.leading)
                            Text("Outwear:")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                                .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                                .padding(.leading)
                            Text("Footwear:")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                                .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                                .padding(.leading)
                            Text("Bags:")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                                .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                                .padding(.leading)
                            Text("Accessories:")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                                .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                                .padding(.leading)
                            Text("Other:")
                                .font(Font.custom("AtkinsonHyperlegible-Regular", size: 25))
                                .foregroundColor(Color(red: 71/255, green: 134/255, blue: 46/255))
                                .padding(.leading)
                        }
                    }
                    .background(Rectangle())
                    .foregroundColor(Color(red: 40/255, green: 80/255, blue: 46/255))
                    .frame(width: 400.0)
                    Spacer()
                    //Toolbar
                    HStack (alignment : .top){
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                            Image("home icon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.top, .leading, .bottom], 10.0)
                            .frame(width: 70.0, height: 70.0)}
                        NavigationLink(destination: infoView().navigationBarBackButtonHidden(true)){
                            Image("info icon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.top, .leading, .bottom], 10.0)
                                .frame(width: 70.0, height: 70.0)
                        }
                       
                        Image("blank")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .leading, .bottom], 10.0)
                            .frame(width: 70.0, height: 70.0)
                        NavigationLink(destination: mapView().navigationBarBackButtonHidden(true)){
                            Image("map icon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.top, .leading, .bottom], 10.0)
                            .frame(width: 70.0, height: 70.0)}
                        NavigationLink(destination: profileView().navigationBarBackButtonHidden(true)) {
                            Image("profile icon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.top, .bottom, .trailing], 10.0)
                            .frame(width: 70.0, height: 70.0)}
                    }
                    .background(Rectangle())
                    .foregroundColor(Color(red: 57/255, green: 60/255, blue: 90/255))
                    .cornerRadius(45)}
                    Button{
                        var hi = 1
                    } label: {
                        Image("plus icon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 100.0)
                }
            }
        }
        
    }
}



#Preview {
    calendarView()
}

