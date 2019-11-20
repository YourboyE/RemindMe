//
//  SelectedVC.swift
//  RemindMe
//
//  Created by YBE on 11/20/19.
//  Copyright © 2019 DreamDev. All rights reserved.
//

import UIKit

class SelectedVC: UIViewController {
    
    var previousVC = ToDoTVC()
    var selectedToDo = ToDo()

    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if selectedToDo.isImportant {
            textLabel.text = "❗️" + selectedToDo.name
        }else {
            textLabel.text = selectedToDo.name
        }
        
        
    }
    
    @IBAction func completedBtnTapped(_ sender: Any) {
        var index = 0
        for toDoFound in previousVC.todoObj {
            if toDoFound.name == selectedToDo.name {
                print("We found it! \(toDoFound.name) Index \(index)")
                previousVC.todoObj.remove(at: index)
                previousVC.tableView.reloadData()
                
                navigationController?.popViewController(animated: true)
                break
            }
            index += 1
        }
    
    }

}
