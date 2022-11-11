//
//  Weekly_Keep_Going.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 11/8/22.
//

import SwiftUI

struct Weekly_Keep_Going: View {
    
    @State private var videoBool = false;
    @State private var next = false;
    
    var body: some View {
        VStack{
            Text("Keep Going").font(.largeTitle).bold()
                .padding()
            Text("You did not make progress in achieving all your goals. No worries!").padding().padding(.horizontal, 34)
            Text("Watch this short video to build self-compassion:").padding(.horizontal, 50.0)
            Button(action: {
                videoBool = true;
            }, label: {
                Label("Video", systemImage: "video.fill")
            }).padding(1).buttonStyle(GrowingButton()).padding()
            
            
            if (videoBool) {
                //Weekly()
            }
            
            //next button
            Button(action: {
                next = true;
            }, label: {
                Text("What Happened?")
            }).padding()
            
            if (next == true) {
//                Home()
            }
        }
    }
}

struct Weekly_Keep_Going_Previews: PreviewProvider {
    static var previews: some View {
        Weekly_Keep_Going()
    }
}
