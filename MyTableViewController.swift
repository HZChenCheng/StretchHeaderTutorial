//
//  MyTableViewController.swift
//  StretchHeaderTutorial
//
//  Created by Apple on 2019/2/20.
//  Copyright © 2019 Chen. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var imageView:UIImageView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Laumn Typora"
        return cell
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let contentOffsetY = scrollView.contentOffset.y
        let height = max(-contentOffsetY, 60)
        imageView?.frame = CGRect(x: 0, y: 0, width: tableView.frame.width, height: height)
        
    }
}
