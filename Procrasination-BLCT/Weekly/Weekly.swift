//
//  Weekly.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 11/8/22.
//

import SwiftUI

struct Weekly: View {
    
    @State var goal = "[weekly goal #1 goes here]"
    let goals = ["[weekly goal #1 goes here]", "[weekly goal #2 goes here]","[weekly goal #3 goes here]"]
    
    enum Options: String, CaseIterable, Identifiable {
        case yes, partially, no
        var id: Self { self }
    }

    @State private var selectedOption: Options = .yes
    
    var body: some View {
        VStack{
            Text("Weekly").font(.largeTitle).bold()
                .padding()
            Text("Take out your calendar and look at the things you wanted to do regarding this semester goal:").padding(.horizontal, 50.0)
            
            List(goals, id: \.self) { goal in
                        Image(goal).resizable().frame(width: 40)
                Text(goal).padding(20.0).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/).padding()
                Text("Did you follow through with the things you wanted to do?").font(.title2).padding(.horizontal, 30.0)
                Picker("Progress", selection: $selectedOption) {
                        ForEach(Options.allCases) { option in
                            Text(option.rawValue.capitalized)
                        }
                    }
                    }
            
        }
    }
}

struct Weekly_Previews: PreviewProvider {
    static var previews: some View {
        Weekly()
    }
}
