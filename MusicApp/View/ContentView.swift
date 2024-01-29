//
//  ContentView.swift
//  MusicApp
//
//  Created by kaito on 2024/01/29.
//

import SwiftUI

struct ContentView: View {
    var musiclist: [MusicListModel] = [
        MusicListModel(MusicName: "SPLATTACK", MusicImageName: "SPLATTACK"),
        MusicListModel(MusicName: "酔いどれ知らず", MusicImageName: "酔いどれ知らず")
    ]
    
    @State var TappendMusicName: String = ""
    @State var TappendMusicImageName: String = ""
    
    @State private var Showshould_MusicPlayView = false
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: MusicPlayView(TappendMusicName: $TappendMusicName, TappendMusicImageName: $TappendMusicImageName), isActive: $Showshould_MusicPlayView){
                    EmptyView()
                }
                List{
                    ForEach(musiclist) { MusicList in
                        Button(action: {
                            TappendMusicName = MusicList.MusicName
                            TappendMusicImageName = MusicList.MusicImageName
                            Showshould_MusicPlayView = true
                        }){
                            HStack{
                                Image(MusicList.MusicImageName).resizable().scaledToFit().frame(width: 100, height: 100).shadow(radius: 10)
                                Text(MusicList.MusicName)
                            }
                        }
                    }
                }
                .navigationTitle("PlayList")
            }
        }
    }
}

#Preview {
    ContentView()
}
