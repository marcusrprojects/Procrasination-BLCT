//
//  Home.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 10/27/22.
//

import SwiftUI

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct Home: View {
    @State var mottoGoal = "this is your motto goal. Good job!"
    @State var checkIn = false;
    var body: some View {
        VStack{
            Text("Home").font(.largeTitle).bold()
                .padding(.vertical, 1.0)
//            Text("Motto Goal").font(.title)
            Text(mottoGoal).padding(20.0).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)

//            Text("Motto Goal Picture").font(.title)
            Image("mottogoalpic").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300)
                .padding([.leading, .bottom, .trailing])
            Text("How are you doing?").font(.title)
            
            if (checkIn == true) {
                Home()
            }
            
            Button(action: {
                checkIn = true;
            }, label: {
                Text("Check-In").font(.title3)
            }).padding(1).buttonStyle(GrowingButton())
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
