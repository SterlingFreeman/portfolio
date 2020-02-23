//
//  Todo.swift
//  todo
//
//  Created by Joseph Freeman on 2020-02-22.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

class TodoVC: UIViewController {
    @IBOutlet weak var todoItemTxt: UITextField!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    var todos: [Todo] = Array<Todo>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        getTodos()
        
    }

    
    func getTodos(){
        NetworkService.shared.getTodos(onSuccess: { (todos) in
            self.todos = todos.items
            self.tableView.reloadData()
            debugPrint(todos)
        }) { (error) in
            print(error)
        }
    }
    
    func addTodo(todo: Todo){
        NetworkService.shared.addTodo(todo: Todo(item: todo.item, priority: todo.priority), onSuccess: { (todos) in
            self.todos = todos.items
            self.tableView.reloadData()
        }) { (error) in
            print(error)
        }
    }
    
    @IBAction func addTodoIsPressed(_ sender: Any) {
        guard let todoItemTxt = self.todoItemTxt.text, !todoItemTxt.isEmpty else{
            return
        }
        let priority = self.prioritySegment.selectedSegmentIndex
        
        self.todoItemTxt.text = ""
        self.prioritySegment.selectedSegmentIndex = 0
        addTodo(todo: Todo(item: todoItemTxt, priority: priority))
    }
    
}

extension TodoVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell") as? TodoCell {
            cell.updateTodoCellView(todo: todos[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}

