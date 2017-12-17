//
//  MenuViewController.swift
//  SwiftTestApp
//
//  Created by 松井康太郎 on 2017/12/17.
//  Copyright © 2017年 松井康太郎. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("インスタンス化された直後（初回に一度のみ）")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("画面が表示される直前")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("画面が表示された直後")
    }
    
    @IBAction func tapButton(_ sender: Any) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "HomeView", bundle: nil)
        let nextView = storyboard.instantiateInitialViewController()
        present(nextView!, animated: true, completion: nil)
    }
}

