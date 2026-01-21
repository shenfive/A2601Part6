//
//  MyView.swift
//  A2601Part6
//
//  Created by Danny Shen on 2026/1/21.
//

import UIKit

class MyView: UIView {
    
    var view:UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) { //一定要寫的建構器，透過 StroryBoard 或 Xib 用的建構器
        super.init(coder: aDecoder)
        setup()
    }
    
    
    func setup() {
        view = loadViewFromNib() //呼叫由Xib 檔，製作一個UIView
        addSubview(view) //把 由 UI檔作出來的 View 加入成自己的 SubView
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor),
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor)]) //設定 Xib 產出的 View 與 MyView 相同大小
    }
    func loadViewFromNib() -> UIView { //由 Xib 檔，製作一個UIView
        let nib = UINib(nibName: "MyView", bundle: nil )
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
}
