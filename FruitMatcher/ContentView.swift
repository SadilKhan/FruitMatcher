//
//  ContentView.swift
//  FruitMatcher
//
//  Created by Md. Sadil Khan on 09/06/2021.
//

import SwiftUI

struct ContentView: View {
    // Declaring three Image
    @State var Image1:String="grapefruit"
    @State var Image2:String="lemon"
    @State var Image3:String="plum"
    @State var credits:Int=0
    
    func giveImage(number:Int)-> String {
        
        switch number {
        case 0: return "lemon"
        case 1: return "plum"
        case 2: return "grapefruit"
        default: return "plum"
        }
    }
    
    var body: some View {
        
        VStack{
            // Name of the Game
            Text("SwiftUI Slots")
                .padding().font(.system(size: 40))
            Spacer()
            
            // Credits
            HStack{
                Text("Credits:").padding()
                Text("\(credits)")
            }
            Spacer()
            
            // Import Images
            HStack{
                Image(Image1).resizable().aspectRatio(contentMode: .fit).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image(Image2).resizable().aspectRatio(contentMode: .fit).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Image(Image3).resizable().aspectRatio(contentMode: .fit).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            let random1=Int.random(in: 0...2)
            let random2=Int.random(in: 0...2)
            let random3=Int.random(in: 0...2)
            
            Button(action: {
                Image1=giveImage(number: random1)
                Image2=giveImage(number: random2)
                Image3=giveImage(number: random3)
                
                if random1==random2 && random2==random3{
                    credits=credits+25
                }
            }, label: {
                Image(systemName: "play.fill")
                Text("Play").font(.system(size: 20)).bold()
            })
            Spacer()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
