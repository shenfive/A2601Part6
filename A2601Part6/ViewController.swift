//
//  ViewController.swift
//  A2601Part6
//
//  Created by Danny Shen on 2026/1/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var theWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let newView = MyView(frame: CGRect(x: 100, y: 100, width: 300, height: 200))
//        self.view.addSubview(newView)
//        print(getNetworkStatus())
        if let url = URL(string: "https://www.apple.com.tw/"){
            let request = URLRequest(url: url)
            theWebView.load(request)
        }
        
        
        
        
        
        
    }
    func getNetworkStatus()->Bool{
            if Reachability(hostName: "www.apple.com")?.currentReachabilityStatus().rawValue == 0 {
                return false
            }else{
                return true
            }
        }


}

