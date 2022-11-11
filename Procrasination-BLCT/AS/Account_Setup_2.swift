//
//  Account_Setup_2.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 10/22/22.
//

import SwiftUI

struct Account_Setup_2: View {
    
    enum Song: String, CaseIterable, Identifiable {
        case one, two
        var id: Self { self }
    }
    
    enum Day: String, CaseIterable, Identifiable {
        case monday, tuesday, wednesday, thursday, friday, saturday, sunday
        var id: Self { self }
    }

    @State private var selectedSong1: Song = .one
    @State private var selectedSong2: Song = .two
    
    @State private var selectedDay: Day = .monday
    
    @State var arb1 = "song 1"
    @State var arb2 = "song 2"
    
    @State private var wakeUp = Date.now
    
    @State var next = false;
    
    var body: some View {
        
        VStack{
            Group{
                Text("Account Setup").font(.largeTitle).bold()
                    .padding(.vertical, 1.0)
                Text("Daily Reminder").font(.title)
                Text("Set daily 5-minute check.").padding(0.3)
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute).padding(.horizontal, 39.0).padding(/*@START_MENU_TOKEN@*/.vertical, 9.0/*@END_MENU_TOKEN@*/)
                List {
                    Picker("Song Selection", selection: $selectedSong1) {
                        //dont use arbitrary songs but the ones entered in previous step, $song1 and $song2
                        Text(arb1).tag(Song.one)
                        Text(arb2).tag(Song.two)
                    }
                }
            }
            
            Group{
                Text("Weekly Reminder").font(.title)
                Text("Set weekly 1-hour check.").padding(.top, 0.1)
                
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute).padding(.horizontal, 39.0).padding(/*@START_MENU_TOKEN@*/.vertical, 9.0/*@END_MENU_TOKEN@*/)
                
                List {
                    Picker("Date Selection", selection: $selectedDay) {
                        
                        ForEach(Day.allCases) { day in
                                Text(day.rawValue.capitalized)
                            }
                    }
                }
                
                List {
                    Picker("Song Selection", selection: $selectedSong1) {
                        //dont use arbitrary songs but the ones entered in previous step, $song1 and $song2
                        Text(arb1).tag(Song.one)
                        Text(arb2).tag(Song.two)
                    }
                }
            }
            
            //next button
            Button(action: {
                next = true;
            }, label: {
                Text("Next")
            }).padding(1)
            
            if (next == true) {
                Account_Setup_3()
            }
        }
    }
}

struct Account_Setup_2_Previews: PreviewProvider {
    static var previews: some View {
        Account_Setup_2()
    }
}
