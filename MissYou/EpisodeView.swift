//
//  EpisodeView.swift
//  MissYou
//
//  Created by 陳昱豪 on 2020/3/14.
//  Copyright © 2020 Chen_Yu_Hao. All rights reserved.
//

import SwiftUI

struct EpisodeView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(missyou, id: \.ep) { (ep) in
                    NavigationLink(destination:EpDetailView(ep: ep)) {
                        EpisodeRow(ep: ep)
                    }
                }
            }.navigationBarTitle("經典畫面")
        }
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeView()
    }
}
