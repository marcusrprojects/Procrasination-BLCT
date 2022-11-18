//
//  Reflection.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 11/17/22.
//

import SwiftUI

struct Reflection: View {
    @State var goal = "[semester goal #1 goes here]"
    let goals = ["[goal #1 goes here]", "[goal #2 goes here]","[goal #3 goes here]"]
    let reasons = ["I did not like the task",
                   "I felt ashamed about procrastinating before",
                   "I was distracted",
                   "I did not block time for it",
                   "I did not start on time",
                   "I was tempted to do something else",
                   "My work environment wasn't right"]
    @State var areChecked = [false, false, false, false, false, false, false]
    
    @State private var next = false;
    
    enum Options: String, CaseIterable, Identifiable {
        case yes, partially, no
        var id: Self { self }
    }
    
    @State private var checked = true
    
    @State private var count = 0

    @State private var selectedOption: Options = .yes
    
    @State var selectedReason = "I did not like the task"
    
    var body: some View {
        VStack{
            Text("Weekly").font(.largeTitle).bold()
                .padding()
            Text("Take out your calendar and look at the things you wanted to do regarding this semester goal:").padding(.horizontal, 50.0)
            
            List(goals, id: \.self) { goal in
                Image(goal).resizable().frame(width: 40)
                Text(goal).padding(20.0).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/).padding()
                Text("Why didn't you get it done?").font(.title2).padding(.horizontal, 30.0)

                ForEach(reasons, id: \.self) { item in // 4
                    HStack{
                        Image(systemName: areChecked[count] ? "checkmark.square.fill" : "square")
                            .foregroundColor(areChecked[count] ? Color(UIColor.systemBlue) : Color.secondary)
                            .onTapGesture {
                                self.areChecked[count].toggle()
                            }
                        Text(item)
                    }

                }

                Picker("Pick a reason", selection: $selectedReason) { // 3
                    ForEach(reasons, id: \.self) { item in // 4
                            Toggle(isOn: $checked) {
                                Text(item)
                            }
                    }
                }
                
            }
            
            //next button
            Button(action: {
                next = true;
            }, label: {
                Text("What Happened?")
            }).padding()
            
            if (next == true) {
                Reflection()
            }
            
            }
        }
}

struct Reflection_Previews: PreviewProvider {
    static var previews: some View {
        Reflection()
    }
}
