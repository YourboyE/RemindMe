//
//  ToDoTVC.swift
//  RemindMe
//
//  Created by YBE on 11/19/19.
//  Copyright © 2019 DreamDev. All rights reserved.
//

import UIKit

class ToDoTVC: UITableViewController {
    
    var todoObj : [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoObj = createToDoList()
        tableView.reloadData()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return todoObj.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
        
        let todo = todoObj[indexPath.row]
        
        if todo.isImportant {
            
            cell.textLabel?.text = "❗️ \(todo.name)"
            
        } else {
            
            cell.textLabel?.text = "\(todo.name)"
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let addVC = segue.destination as! AddToDoVC
        addVC.previousVC = self
    }

   
    func createToDoList() -> [ToDo] {
        
        let buyEggs = ToDo()
        buyEggs.name = "Buy Eggs"
        
        let washCar = ToDo()
        washCar.name = "Wash Car"
        washCar.isImportant = true
        
        let cheese = ToDo()
        cheese.name = "Buy Yummy Cheese"
        cheese.isImportant = true
        
        return [buyEggs, washCar, cheese]
        
    }
    

}
