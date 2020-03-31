//
//  ViewController.swift
//  UIPasteboardSample
//
//  Created by satoshi.marumoto on 2020/03/31.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 文字列コピー
    func copyString() {
        UIPasteboard.general.string = "コピーしたい文字列"
        print(UIPasteboard.general.string!)
    }
    
    // 画像コピー単数
    func copyImage() {
        UIPasteboard.general.image = UIImage(named: "flower")
        print(UIPasteboard.general.image!)
    }
    
    // 画像コピー複数
    func copyImage2() {
        UIPasteboard.general.images = [UIImage(named: "road")!, UIImage(named: "wave")!]
        print(UIPasteboard.general.images!)
    }
    
    @IBAction func copyStringButtonTapped() {
        copyString()
    }
    
    @IBAction func copyImageButtonTapped() {
        copyImage()
    }
    
    @IBAction func copyImage2ButtonTapped() {
        copyImage2()
    }

}

