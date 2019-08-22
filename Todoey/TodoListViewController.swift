//
//  ViewController.swift
//  Todoey
//
//  Created by Hollis Edwards on 8/22/19.
//  Copyright © 2019 Hollis Edwards. All rights reserved.
//

import UIKit

class TodoListVistController: UITableViewController {
    
    let itemArray = ["Find Mike", "Buy Eggos","Destory Demogorgon"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
        //MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return itemArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delegate Methods

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType =  .checkmark
        }

        
        tableView.deselectRow(at: indexPath, animated: true)
    }

    



}

