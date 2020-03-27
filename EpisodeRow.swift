//
//  EpisodeRow.swift
//  MissYou
//
//  Created by 陳昱豪 on 2020/3/14.
//  Copyright © 2020 Chen_Yu_Hao. All rights reserved.
//

import SwiftUI

struct EpisodeRow: View {
    var ep:Episode
    var body: some View {
        HStack{
            
            Image("ep\(ep.ep)").renderingMode(.original).resizable().cornerRadius(20).frame(width:150,height:100).padding(.leading,10)
            VStack(alignment: .leading){
                Text("Ep.\(ep.ep)").foregroundColor(.black).padding(7)
                Text(ep.name).foregroundColor(.black).padding(5)            }
            Spacer()
            }.padding(10).background(LinearGradient(gradient: .init(colors: [Color.init(red: 249/255, green: 208/255, blue: 222/255),Color.init(red: 202/255, green: 230/255, blue: 255/255)]), startPoint: .leading, endPoint: .trailing)).cornerRadius(30)
    }
}

struct EpisodeRow_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeRow(ep: missyou[1])
    }
}
