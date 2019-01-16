//
//  ViewController.swift
//  ToDo
//
//  Created by Lauren Small on 1/16/19.
//  Copyright © 2019 Lauren Small. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var toDoList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "To Do List"
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "Cell")
    }

    @IBAction func addToDoItem(_ sender: UIBarButtonItem) {
    }
    
}

