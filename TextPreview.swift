//
//  TextPreview.swift
//  MissYou
//
//  Created by 陳昱豪 on 2020/3/27.
//  Copyright © 2020 Chen_Yu_Hao. All rights reserved.
//

import SwiftUI

struct TextPreview:UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "TextView")
        return controller    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
    typealias UIViewControllerType = UIViewController
    
        
        
    
}

struct TextPreview_Previews: PreviewProvider {
    static var previews: some View {
        TextPreview()
    }
}
