//
//  HomeViewController.swift
//  SwiftTestApp
//
//  Created by 松井康太郎 on 2017/12/17.
//  Copyright © 2017年 松井康太郎. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // 画面遷移ボタンの紐付け
    @IBOutlet weak var button: UIButton!
    
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
    
    // ボタンを押した時の動作
    @IBAction func tapButton(_ sender: Any) {
        // まず、遷移先のストーリーボードを呼び出します
        let storyboard: UIStoryboard = UIStoryboard(name: "MenuView", bundle: nil)
        
        // ストーリーボードに紐付いているコントローラーを呼び出します
        let nextView = storyboard.instantiateViewController(withIdentifier: "MenuViewMain") as! MenuViewController
        
        // コントローラーを呼び出して、画面遷移させます
        present(nextView, animated: true, completion: nil)
        
    }
}
