//
//  ViewController.swift
//  LocalCacheRule
//
//  Created by sunxuiMac on 16/6/25.
//  Copyright © 2016年 sunxuiMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mainTable: UITableView!
    
    var dataList:NSMutableArray! = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let refreshController = UIRefreshControl()
        refreshController.addTarget(self, action: #selector(refreshTable), forControlEvents: .ValueChanged)
        mainTable.addSubview(refreshController)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func refreshTable() {
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell0")
        
        if dataList.count > 0 {
            
        }
        
        return cell!
    }
}

