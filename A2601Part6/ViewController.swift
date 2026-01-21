//
//  ViewController.swift
//  A2601Part6
//
//  Created by Danny Shen on 2026/1/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newView = MyView(frame: CGRect(x: 100, y: 100, width: 300, height: 200))
        self.view.addSubview(newView)
        
    }


}

