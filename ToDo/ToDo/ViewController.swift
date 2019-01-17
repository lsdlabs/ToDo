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
        
        let alert = UIAlertController(title: "New Item",
                                      message: "Add a new item to your To Do list",
                                      preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { [unowned self] action in
                guard let textField = alert.textFields?.first, let itemToSave = textField.text else {
                        return
                        }
                                        
                        self.toDoList.append(itemToSave)
                        self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addTextField()
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
    
}


// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            
            let cell =
                tableView.dequeueReusableCell(withIdentifier: "Cell",
                                              for: indexPath)
            cell.textLabel?.text = toDoList[indexPath.row]
            return cell
    }
}


