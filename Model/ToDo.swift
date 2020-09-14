//
//  ToDo.swift
//  Memong
//
//  Created by gnun on 2020/09/11.
//  Copyright © 2020 진원 장. All rights reserved.
//

import Foundation

class ToDo {
    var content: String
    var insertDate: Date
    var done: Bool
    
    init(content: String) {
        self.content = content
        self.insertDate = Date()
        self.done = false
    }
   
    
    static var dummyToDoList = [
        ToDo(content: "8시 장보기"),
        ToDo(content: "9시 운동")
    ]
}

