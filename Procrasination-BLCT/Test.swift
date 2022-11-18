//
//  Test.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 11/8/22.
//

import SwiftUI

struct Test: View {
    
    let goals = ["[goal #1 goes here]", "[goal #2 goes here]","[goal #3 goes here]"]
    
    @State var selectedItems = Set<UUID>()
    
    let reasons = ["I did not like the task",
                   "I felt ashamed about procrastinating before",
                   "I was distracted",
                   "I did not block time for it",
                   "I did not start on time",
                   "I was tempted to do something else",
                   "My work environment wasn't right"]
    
    @State var areChecked = [false, false, false, false, false, false, false]
    
    @State private var count = 0


    var body: some View {
        List(selection: $selectedItems) {
            ForEach((0...6), id: \.self) { item in
                Text(reasons[item])
                Image(systemName: areChecked[count] ? "checkmark.square.fill" : "square")
                    .foregroundColor(areChecked[count] ? Color(UIColor.systemBlue) : Color.secondary)
                    .onTapGesture {
                        self.areChecked[count].toggle()
                    }
            }
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
            
            
        }

    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
