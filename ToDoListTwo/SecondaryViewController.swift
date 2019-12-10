//
//  SecondaryViewController.swift
//  ToDoListTwo
//
//  Created by Václav Černohorský on 02/12/2019.
//  Copyright © 2019 Václav Černohorský. All rights reserved.
//

import UIKit

class SecondaryViewController: UIViewController {
    
    private let taskService = TaskService.instance
    private let svc = ViewController.instance
    
    //static let instance = SecondaryViewController()
    //private init() {}

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tfForHoes: UITextField!
    
    
    @IBAction func addButton(_ sender: Any) {
        
        taskService.addArray(textTask: tfForHoes.text ?? "")
        //print(taskService.getArray())
        svc.printTask()
        
        
        //awesomeField.append(text)
        //print(awesomeField)
        
        navigationController?.popViewController(animated: true)
        
        dismiss(animated: true, completion: nil)
        
    }

}
