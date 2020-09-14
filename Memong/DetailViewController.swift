//
//  ComposeViewController.swift
//  Memong
//
//  Created by gnun on 2020/09/10.
//  Copyright © 2020 진원 장. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var todoTextField: UITextField!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func datePickerValueChanged(_ sender: Any) {
        
        
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .long
        dateformatter.locale = Locale(identifier: "Ko_kr")
        
        let  date = dateformatter.string (from: datePicker.date)
        
        dateLabel.text = date
        
    }
    
    
    @IBAction func close(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func save(_ sender: Any) {
        
        guard let todo = todoTextField.text,
            todo.count > 0 else {
                return
        }
        
        if let todoDate = dateLabel.text {
            if todoDate.count > 0 {
            } else {
                return
                
            }
        }
        
        
        let newTodo = ToDo(content: todo)
        
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .long
        dateformatter.locale = Locale(identifier: "Ko_kr")
        
        let date:Date = dateformatter.date(from: dateLabel.text!)!
        
        newTodo.insertDate = date
        
        ToDo.dummyToDoList.append(newTodo)
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
