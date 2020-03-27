//
//  TextView.swift
//  MissYou
//
//  Created by 陳昱豪 on 2020/3/27.
//  Copyright © 2020 Chen_Yu_Hao. All rights reserved.
//

import SwiftUI

struct TextView: View {
    @State private var ans=["","","","",""]
    @State private var send=false
    var body: some View {
        NavigationView {
            List{
                ForEach(quizes.indices, id: \.self) { (index) in
                    VStack(alignment:.center){
                        ZStack{
                            Image("外框").resizable().frame(width:380,height: 200)
                            VStack {
                                Text(quizes[index].question).font(.custom("jf-openhuninn-1.0", size: 20)).frame(width:300,height: 45).padding()
                                TextField("請輸入答案...", text: self.$ans[index]).padding(10).frame(width:300)
                                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 1))
                            }
                        }
                        if self.send{
                            Text(self.ans[index] == quizes[index].ans ? "答對了！！":quizes[index].resolve).foregroundColor(.red).frame(width:280)
                        }
                    }
                }
                VStack {
                    Button(action: {
                        self.send=true
                    }) { Text("批改").foregroundColor(Color.init(red: 32/255, green: 80/255, blue: 188/255)).font(.custom("jf-openhuninn-1.0", size: 30)).padding(5).frame(width:360).background(Color.init(red: 184/255, green: 232/255, blue: 156/255)).cornerRadius(20)
                        
                    }.offset(x:10)
                    Spacer()
                }.frame(height:300)
                
            }.navigationBarTitle("隨堂測驗")

        }    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
