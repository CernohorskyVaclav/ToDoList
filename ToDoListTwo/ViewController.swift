//
//  ViewController.swift
//  ToDoListTwo
//
//  Created by Václav Černohorský on 02/12/2019.
//  Copyright © 2019 Václav Černohorský. All rights reserved.
//

import UIKit
//public var awesomeField = [String]()

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private let taskService = TaskService.instance
    static let instance = ViewController()
    var arrayForBuddies: [String] = []
    
    @IBOutlet weak var tvForBuddies: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tvForBuddies.delegate = self
        tvForBuddies.dataSource = self
        // Do any additional setup after loading the view.
    }
    public func printTask() {
        print(taskService.getArray())
        //tvForBuddies.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskService.instance.getArray().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = TaskService.instance.getArray()[indexPath.item]
        return cell
    }
    
    
    
    /*if(awesomeField[1] == "") {
        
    }*/
    


}

