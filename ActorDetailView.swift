//
//  ActorDetailView.swift
//  MissYou
//
//  Created by 陳昱豪 on 2020/3/18.
//  Copyright © 2020 Chen_Yu_Hao. All rights reserved.
//

import SwiftUI

struct ActorDetailView:UIViewControllerRepresentable {
    var actor : Actor
    
    func makeUIViewController(context: Context) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: actor.nickname)
        return controller    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
    typealias UIViewControllerType = UIViewController
    
        
        
    
}

struct ActorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ActorDetailView(actor: missyouactor[0])
    }
}
