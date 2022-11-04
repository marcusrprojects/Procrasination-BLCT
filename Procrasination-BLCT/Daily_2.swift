//
//  Daily_2.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 10/27/22.
//

import SwiftUI

struct Daily_2: View {
    
    @State var clicked = false
    
//    struct NavigationLink<Label, Destination> where Label : View, Destination : View

    
    var body: some View {
        
        
        
//        NavigationLink("Work Folder") {
//            FolderDetail(id: workFolder.id)
//        }
        NavigationView{
            VStack{
                Text("Daily").font(.largeTitle).bold()
                    .padding(.bottom, 50.0)
                Text("Success In Applying Life Hack").padding()
                HStack (alignment: .center){
                    Button(action: {
                        clicked = true
                    }, label: {
                        Image("excited").resizable()
                            .frame(width: 60, height: 60)
                    }).buttonStyle(GrowingEmoji())
                    
                    Button(action: {
                        clicked = true
                    }, label: {
                        Image("happy").resizable()
                            .frame(width: 60, height: 60)
                    }).buttonStyle(GrowingEmoji())
                    
                    Button(action: {
                        clicked = true
                    }, label: {
                        Image("meh").resizable()
                            .frame(width: 60, height: 60)
                    }).buttonStyle(GrowingEmoji())
                    
                    Button(action: {
                        clicked = true
                    }, label: {
                        Image("sad").resizable()
                            .frame(width: 60, height: 60)
                    }).buttonStyle(GrowingEmoji())
                    NavigationLink(destination: Home()){
                        Button(action: {
                            clicked = true
                        }, label: {
                            Image("angry").resizable()
                                .frame(width: 60, height: 60)
                        }).buttonStyle(GrowingEmoji())
                    }
                    
                    
//                    if clicked {
//                        NavigationLink(destination: Home()){
//                            Text("hi")
//                        }
//                    }
                    
                    //try not if clicked but do button
                    
                    
                }
            }
        }
        
//        NavigationView {
//            VStack{
//
//                NavigationLink(destination: Home()){
//                    Button(action: {
//                        clicked = true
//                    }, label: {
//                        Image("angry").resizable()
//                            .frame(width: 60, height: 60)
//                    }).buttonStyle(GrowingEmoji())
//                }
//            }
//        }
    }
}

struct Daily_2_Previews: PreviewProvider {
    static var previews: some View {
        Daily_2()
    }
}
