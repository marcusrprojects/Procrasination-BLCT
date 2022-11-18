//
//  Weekly_Rewards.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 11/8/22.
//

import SwiftUI

struct Weekly_Rewards: View {
    
    enum Rewards: String, CaseIterable, Identifiable {
        case reward1, reward2, reward3, reward4
        var id: Self { self }
    }
    
    @State private var selectedReward: Rewards = .reward1
    
    @State private var next = false;
    
    var body: some View {
        VStack{
            Text("Rewards").font(.largeTitle).bold()
                .padding()
            Text("Congrats! You have made some progress toward your goals.").font(.title3).padding(.horizontal, 50.0)
            Text("Time for a reward.").font(.title3).padding(.horizontal, 50).padding(.bottom)
            Text("How will you reward yourself?").padding(.horizontal, 50)
            Picker("Reward", selection: $selectedReward) {
                    ForEach(Rewards.allCases) { reward in
                        Text(reward.rawValue.capitalized)
                    }
            }.padding()
            Text("However, you did not make progress toward all of your goals.").font(.title3).padding(.horizontal, 50.0).padding(.bottom)
            Text("Let's see why...").padding(.horizontal, 50.0)
            
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

struct Weekly_Rewards_Previews: PreviewProvider {
    static var previews: some View {
        Weekly_Rewards()
    }
}
