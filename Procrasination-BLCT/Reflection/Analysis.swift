//
//  Analysis.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 11/17/22.
//

import SwiftUI

struct Analysis: View {
    
    
    
    let procrastReasons = ["I did not like the task",
                   "I felt ashamed about procrastinating before",
                   "I was distracted"]
    
    @State private var speed1 = 50.0
    @State private var speed2 = 50.0
    @State private var speed3 = 50.0
    
    @State private var isEditing1 = false
    @State private var isEditing2 = false
    @State private var isEditing3 = false

    @State private var videoBool = false;
    
    var body: some View {
        VStack{
            Text("Analysis").font(.largeTitle).bold()
                .padding()
            Text("Reasons for Procrastination...").font(.title3).padding(.horizontal, 50.0)
            
            Text("1. " + procrastReasons[0]).padding()
            
            Slider(
                        value: $speed1,
                        in: 0...100,
                        onEditingChanged: { editing in
                            isEditing1 = editing
                        }
            ).padding()
//                    Text("\(speed1)")
//                        .foregroundColor(isEditing1 ? .gray : .blue)

            
            Text("2. " + procrastReasons[1]).padding()
            
            Slider(
                        value: $speed2,
                        in: 0...100,
                        onEditingChanged: { editing in
                            isEditing2 = editing
                        }
            ).padding()
            
            Text("3. " + procrastReasons[2]).padding()
            
            Slider(
                        value: $speed3,
                        in: 0...100,
                        onEditingChanged: { editing in
                            isEditing3 = editing
                        }
            ).padding()
            
            Button(action: {
                videoBool = true;
            }, label: {
                Label("Video", systemImage: "video.fill")
            }).padding(1).buttonStyle(GrowingButton()).padding()
            
            if (videoBool) {
                Home()
            }
        }
    }
}

struct Analysis_Previews: PreviewProvider {
    static var previews: some View {
        Analysis()
    }
}
