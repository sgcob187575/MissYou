//
//  ActorView.swift
//  MissYou
//
//  Created by 陳昱豪 on 2020/3/18.
//  Copyright © 2020 Chen_Yu_Hao. All rights reserved.
//

import SwiftUI

struct ActorView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(missyouactor, id: \.nickname) { (actor) in
                    NavigationLink(destination:ActorDetailView(actor:actor).navigationBarTitle(actor.nickname)) {
                        ActorRow(actor: actor)
                    }
                }
            }.navigationBarTitle("演員列表")

        }
    }
}

struct ActorView_Previews: PreviewProvider {
    static var previews: some View {
        ActorView()
    }
}
