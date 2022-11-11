//
//  Weekly_Perfect.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 11/8/22.
//

import SwiftUI

struct Weekly_Perfect: View {
    
    enum Rewards: String, CaseIterable, Identifiable {
        case reward1, reward2, reward3, reward4
        var id: Self { self }
    }
    
    @State private var videoBool = false;

    @State private var selectedReward: Rewards = .reward1
    
    @State var next = false;
    
    var body: some View {
        VStack{
            Text("Perfect").font(.largeTitle).bold()
                .padding()
            Text("You met all of your goals. Great job! How will you reward yourself?").padding(.horizontal, 50.0)
            Picker("Reward", selection: $selectedReward) {
                    ForEach(Rewards.allCases) { reward in
                        Text(reward.rawValue.capitalized)
                    }
            }.padding()
            Text("Would you still like to watch a video to improve your procrastination know-how?").padding(.horizontal, 50.0)
            Button(action: {
                videoBool = true;
            }, label: {
                Label("Video", systemImage: "video.fill")
            }).padding(1).buttonStyle(GrowingButton()).padding()
            
            if (videoBool) {
                //Weekly()
            }
            
            //finish button
            Button(action: {
                next = true;
            }, label: {
                Text("Next")
            }).padding()
            
            if (next == true) {
//                Home()
            }
        }
    }
}

struct Weekly_Perfect_Previews: PreviewProvider {
    static var previews: some View {
        Weekly_Perfect()
    }
}
