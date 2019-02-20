//
//  ViewController.swift
//  StretchHeaderTutorial
//
//  Created by Apple on 2019/2/20.
//  Copyright © 2019 Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myTable = MyTableViewController()
        self.addChild(myTable)
        myTable.tableView.contentInset = UIEdgeInsets(top: 300, left: 0, bottom: 0, right: 0)
        view.addSubview(myTable.tableView)
        
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 300)
        imageView.image = UIImage(named: "poster")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        
        myTable.imageView = imageView
    }


}

