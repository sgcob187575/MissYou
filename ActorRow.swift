//
//  ActorRow.swift
//  MissYou
//
//  Created by 陳昱豪 on 2020/3/18.
//  Copyright © 2020 Chen_Yu_Hao. All rights reserved.
//

import SwiftUI

struct ActorRow: View {
    var actor:Actor
    var body: some View {
        HStack{
        
            Image(actor.nickname).renderingMode(.original).resizable().scaledToFit().cornerRadius(20).frame(width:150,height:100).padding(.leading,10)
        VStack(alignment: .leading){
            Text(actor.nickname).foregroundColor(.black).padding(7)
            Text(actor.name+" 飾").foregroundColor(.black).padding(5)            }
        Spacer()
        }.padding(10).background(LinearGradient(gradient: .init(colors: [Color.init(red: 157/255, green: 235/255, blue: 234/255),Color.init(red: 117/255, green: 125/255, blue: 245/255)]), startPoint: .leading, endPoint: .trailing)).shadow(color: .white, radius: 2, x: -3, y: -3).shadow(color: .lairShadowGray, radius: 2, x: 3, y: 3
        )}
}

struct ActorRow_Previews: PreviewProvider {
    static var previews: some View {
        ActorRow(actor: missyouactor[0])
    }
}
