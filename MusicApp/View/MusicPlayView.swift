//
//  MusicPlayView.swift
//  MusicApp
//
//  Created by kaito on 2024/01/29.
//

import SwiftUI

struct MusicPlayView: View {
    @State var MusicPlay: Bool = false
    
    @Binding var TappendMusicName: String
    @Binding var TappendMusicImageName: String
    
    var body: some View {
        VStack{
            Spacer()
            Image(TappendMusicImageName).resizable().scaledToFit().frame(width: 300, height: 300).shadow(radius: 50)
            Text(TappendMusicName).font(.largeTitle).fontWeight(.bold)
            Spacer()
            HStack{
                Button(action: {
                    
                }){
                    Image(systemName: "backward.end.fill").resizable().scaledToFit().frame(width: 40, height: 40).foregroundColor(Color.black)
                }
                Button(action: {
                    if !MusicPlay{
                        MusicPlay = true
                    } else {
                        MusicPlay = false
                    }
                }){
                    Image(systemName: MusicPlay ? "pause.fill" : "play.fill").frame(width: 80, height: 80).background(Color.black).foregroundColor(Color.white).cornerRadius(50)
                }.padding()
                Button(action: {
                    
                }){
                    Image(systemName: "forward.end.fill").resizable().scaledToFit().frame(width: 40, height: 40).foregroundColor(Color.black)
                }
            }
            Spacer()
        }
    }
}
