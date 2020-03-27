//
//  EpDetailView.swift
//  MissYou
//
//  Created by 陳昱豪 on 2020/3/14.
//  Copyright © 2020 Chen_Yu_Hao. All rights reserved.
//

import SwiftUI

struct EpDetailView: View {
    var ep:Episode
    var body: some View {
        
        ZStack {
            RadialGradient(gradient: .init(colors: [Color.init(red: 240/255, green: 239/255, blue: 242/255),Color.gray]), center: .center, startRadius: 20, endRadius: 400)
            VStack {
                HStack{
                    Image(systemName: "\(ep.ep).circle").resizable().scaledToFit().frame(width:50)
                    Text(self.ep.name).font(.custom("jf-openhuninn-1.0", size: 30))
                }.padding().background(LinearGradient(gradient: .init(colors: [Color.init(red: 113/255, green: 218/255, blue: 130/255),Color.init(red: 212/255, green: 238/255, blue: 220/255),Color.init(red: 160/255, green: 243/255, blue: 232/255)]), startPoint: .leading, endPoint: .trailing)).cornerRadius(50)
                ScrollView(.horizontal) {HStack{
                    ForEach(ep.classic.indices, id: \.self){ (index) in
                        VStack(spacing:30) {
                            Image("\(self.ep.ep)-\(index)").resizable().scaledToFit().frame(width:300).cornerRadius(30)
                            Text(self.ep.classic[index]).font(.custom("jf-openhuninn-1.0", size: 20)).frame(width:290,height: 100)
                        }.padding().frame(width:350,height: 400).background(LinearGradient(gradient: .init(colors: [Color.init(red: 249/255, green: 208/255, blue: 222/255),Color.init(red: 202/255, green: 230/255, blue: 255/255)]), startPoint: .leading, endPoint: .trailing)).cornerRadius(50)
                    }
                    }
                }
            }

            
                    }.navigationBarTitle("第\(ep.ep)集").edgesIgnoringSafeArea(.all)
    }
}

struct EpDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EpDetailView(ep:missyou[0])
    }
}
