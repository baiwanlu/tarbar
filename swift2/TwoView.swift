//
//  TwoView.swift
//  swift2
//
//  Created by 道标朱 on 15/12/29.
//  Copyright © 2015年 道标朱. All rights reserved.
//

import UIKit

class TwoView: UIViewController {

    var mylabel:UILabel = UILabel()
    var myView:UIView  = UIView()
    var mybuton:UIButton = UIButton()
    var myImageView:UIImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.redColor()
        
        self.mylabel = createLabel()
        self.view.addSubview(self.mylabel)
        
        self.myView = creatView()
        self.view.addSubview(self.myView)
        
        self.mybuton = createButton()
        self.view.addSubview(self.mybuton)
        
        self.myImageView = createImageView()
        self.view.addSubview(self.myImageView)
        
        
    }

   
   
    func createLabel() -> UILabel{
        let label:UILabel = UILabel(frame: CGRectMake(10,80,self.view.frame.size.width-20,50))
        label.backgroundColor = UIColor.greenColor()
        label.textAlignment = .Center
        label.text = "hello swifi"
        return label
    }
    
    func creatView() -> UIView{
        let orginY = CGRectGetMaxY(self.mylabel.frame) + 10
        let myView:UIView = UIView(frame: CGRectMake(10,orginY,self.view.frame.size.width - 20,30))
        myView.backgroundColor = UIColor.whiteColor()
        return myView
    }
    
    func createButton() -> UIButton{
        let orginY = CGRectGetMaxY(self.myView.frame)+10
        let button:UIButton = UIButton(frame: CGRectMake(10,orginY,self.view.frame.size.width-20,30))
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("button", forState: UIControlState.Normal)
        button.titleLabel?.font = UIFont.systemFontOfSize(12)
        button.addTarget(self, action: "tappedButton:", forControlEvents: UIControlEvents.TouchUpInside)
        button.tag = 100
        return button
    }
    
    func createImageView() -> UIImageView{
        let originY = CGRectGetMaxY(self.mybuton.frame)+10
        let imageView:UIImageView = UIImageView(frame: CGRectMake((self.view.frame.size.width-100)/2, originY, 100, 50))
        let image:UIImage = UIImage(named: "icon")!
        imageView.image = image
        return imageView
    }
    
    func tappedButton(sender:UIButton){
        print(sender.tag)
    }
}
