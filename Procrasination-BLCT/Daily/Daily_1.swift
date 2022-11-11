//
//  Daily_1.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 10/27/22.
//

import SwiftUI

struct GrowingEmoji: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
//            .padding()
            .background(configuration.isPressed ? .blue : .white)
//            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct Daily_1: View {
    
    @State private var wakeUp = Date.now
    @State private var clickedEmoji = false
    
    var body: some View {
        VStack{
            Text("Daily").font(.largeTitle).bold()
                .padding(.bottom, 50.0)
            Text("Success Tackling Procrastination").padding()
            HStack (alignment: .center){
                Button(action: {
                    clickedEmoji = true
                }, label: {
                    Image("excited").resizable()
                        .frame(width: 60, height: 60)
                }).buttonStyle(GrowingEmoji())
                
                Button(action: {
                    clickedEmoji = true
                }, label: {
                    Image("happy").resizable()
                        .frame(width: 60, height: 60)
                }).buttonStyle(GrowingEmoji())
                
                Button(action: {
                    clickedEmoji = true
                }, label: {
                    Image("meh").resizable()
                        .frame(width: 60, height: 60)
                }).buttonStyle(GrowingEmoji())
                
                Button(action: {
                    clickedEmoji = true
                }, label: {
                    Image("sad").resizable()
                        .frame(width: 60, height: 60)
                }).buttonStyle(GrowingEmoji())
                
                Button(action: {
                    clickedEmoji = true
                }, label: {
                    Image("angry").resizable()
                        .frame(width: 60, height: 60)
                }).buttonStyle(GrowingEmoji())
                
                if clickedEmoji {
                    Daily_2()
                }
            }
            DatePicker("", selection: $wakeUp, displayedComponents: .date).padding(.trailing, 120).padding()
        }
    }
}

struct Daily_1_Previews: PreviewProvider {
    static var previews: some View {
        Daily_1()
    }
}
