//
//  ThreeView.swift
//  swift2
//
//  Created by 道标朱 on 15/12/29.
//  Copyright © 2015年 道标朱. All rights reserved.
//

import UIKit

class ThreeView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       self.view.backgroundColor = UIColor.yellowColor()
        var button:UIButton = UIButton(frame: CGRectMake(10,100,self.view.frame.width-20,30))
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("button", forState: UIControlState.Normal)
        button.titleLabel?.font = UIFont.systemFontOfSize(12)
        button.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
    }

    func click(sender:UIButton){
        var v:UIViewController = UIViewController()
        v.title = "View Controller"
        v.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.pushViewController(v, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
}
