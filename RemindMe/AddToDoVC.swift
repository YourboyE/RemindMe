//
//  AddToDoVC.swift
//  RemindMe
//
//  Created by YBE on 11/19/19.
//  Copyright © 2019 DreamDev. All rights reserved.
//

import UIKit

class AddToDoVC: UIViewController {
    
    var previousVC = ToDoTVC()

    //outlets
    @IBOutlet weak var textFld: UITextField!
    @IBOutlet weak var isImportantSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    // Functions
    @IBAction func addBtnTapped(_ sender: Any) {
        let todo = ToDo()
        todo.name = textFld.text!
        todo.isImportant = isImportantSwitch.isOn
        
        previousVC.todoObj.append(todo)
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
        
    }
    
   
}
