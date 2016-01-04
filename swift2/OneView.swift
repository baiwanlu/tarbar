//
//  OneView.swift
//  swift2
//
//  Created by 道标朱 on 15/12/29.
//  Copyright © 2015年 道标朱. All rights reserved.
//


import UIKit

class OneView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ///
       self.tableView = UITableView(frame: CGRectMake(0, 64, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-64))
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.tableView!.autoresizingMask = [UIViewAutoresizing.FlexibleHeight, UIViewAutoresizing.FlexibleWidth]
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view!.addSubview(self.tableView!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return 100
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView .dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel!.text = String(format: "%i", indexPath.row)
        return cell
    }
}
 