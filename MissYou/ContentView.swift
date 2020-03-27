//
//  ContentView.swift
//  MissYou
//
//  Created by 陳昱豪 on 2020/3/14.
//  Copyright © 2020 Chen_Yu_Hao. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    var body: some View {
        TabView{
            EpisodeView().tabItem { VStack{Image(systemName: "list.bullet")
            Text("EP")}
            }
            ActorView().tabItem { VStack{Image(systemName: "person.crop.rectangle")
                Text("Actor")}
            }
            TextView().tabItem { VStack{Image(systemName: "square.and.pencil")
                Text("Quiz")}
            }

        }.overlay(MusicBar().offset(x: 0, y: -49), alignment: .bottom)    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
