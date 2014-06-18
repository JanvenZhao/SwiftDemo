//
//  Root.swift
//  swiftDemo
//
//  Created by jian.zhao on 14-6-18.
//  Copyright (c) 2014年 jian.zhao. All rights reserved.
//


import UIKit

class Root: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let myString = "Hello Swift"
    
    let height:Float = 30
    
    var tableView:UITableView = UITableView()
    
    let datas:String[] = ["1","2","3"]
    
    override func viewDidLoad(){
    
        super.viewDidLoad()
        
        //createButton()
        createTableView()
    }
    
    func createTableView()->(){
    
        let tab:UITableView! = UITableView(frame:CGRectMake(0,0,320,480))
            tab.delegate = self
        tab.dataSource = self
        self.view.addSubview(tab)
        //self.tableView = tab
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? UITableViewCell
        
        if !cell {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "Cell")
        }
        cell!.textLabel.text = datas[indexPath.row]
        
        return cell
        
    }
    
    
    func createButton()->(){
        var btn:UIButton = UIButton(frame:CGRectMake(0,100,320,height))
        btn.setTitle(myString,forState:.Normal)
        btn.addTarget(self,action:"tappedButton:",forControlEvents:.TouchUpInside)
        self.view.addSubview(btn)
    }
    
    func tappedButton(sender:UIButton!)->(){
    
        println("This is my firsrt swift Demo")
        
    }
    
}
