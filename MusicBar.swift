//
//  MusicBar.swift
//  finalproject
//
//  Created by 陳昱豪 on 2019/12/28.
//  Copyright © 2019 Chen_Yu_Hao. All rights reserved.
//

import SwiftUI
import AVFoundation
struct MusicBar: View {
    @State private var song = songs.randomElement()!
    @State var isPlay = true
    let player = AVQueuePlayer()
    @State var looper: AVPlayerLooper?
    @State var showmv=false
    var body: some View {
        HStack {
            Text(song.songname)
                .bold()
                .foregroundColor(.black)
            
            Spacer()
            Button(action: {
                self.isPlay=false
                self.player.pause()
                self.showmv=true
            }){
                Text("MV").foregroundColor(.white).padding(5).background(Color.black).clipShape(Circle())
            }
            Button(action: {
                self.player.removeAllItems()
                //self.item = AVPlayerItem(url:  Bundle.main.url(forResource: "music/"+self.songname, withExtension: "mp3")!)
                self.looper = AVPlayerLooper(player: self.player, templateItem: .init(url: Bundle.main.url(forResource: "music/"+self.song.songname, withExtension: "mp3")!))
                self.isPlay.toggle()
                if self.isPlay {
                    self.player.play()
                } else {
                    self.player.pause()
                }
            }) {
                Image(systemName: isPlay ? "pause.fill" : "play.fill")
                    .imageScale(.large)
                    .foregroundColor(.white)
            }
            Button(action: {
                self.player.removeAllItems()
                self.song=songs.randomElement()!
                self.looper = AVPlayerLooper(player: self.player, templateItem: .init(url: Bundle.main.url(forResource: "music/"+self.song.songname, withExtension: "mp3")!))
                self.isPlay=true
                self.player.play()
            }) {
                Image(systemName: "forward.end.fill")
                    .imageScale(.large)
                    .foregroundColor(.white)
            }
            
        }.onAppear(){
            
            self.looper = AVPlayerLooper(player: self.player, templateItem: .init(url: Bundle.main.url(forResource: "music/"+self.song.songname, withExtension: "mp3")!))
            self.player.play()


            }.sheet(isPresented: $showmv) {
                SafariViewController(url: URL(string: self.song.URL)!)
            }
        .padding()
            
        .background(Color.init(red: 152/255, green: 224/255, blue: 229/255).opacity(0.5))
    }}


