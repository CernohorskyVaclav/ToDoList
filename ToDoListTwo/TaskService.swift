//
//  Service.swift
//  ToDoListTwo
//
//  Created by Václav Černohorský on 03/12/2019.
//  Copyright © 2019 Václav Černohorský. All rights reserved.
//

class TaskService {
    static let instance = TaskService()
    
    private var awesomeArray: [String] = []
    
    private init() {}
    
    func addArray(textTask: String) {
        awesomeArray.append(textTask)
    }
    
    func getArray() -> [String] {
        return awesomeArray;
    }
}



//Service.instance.addArray(textTask: "")
