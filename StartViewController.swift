//
//  StartViewController.swift
//  MissYou
//
//  Created by 陳昱豪 on 2020/3/27.
//  Copyright © 2020 Chen_Yu_Hao. All rights reserved.
//

import UIKit
import SwiftUI
class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBSegueAction func showView(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: TextView())
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
