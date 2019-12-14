//
//  AddTaskViewController.swift
//  TableViewPractice
//
//  Created by 板垣智也 on 2019/12/13.
//  Copyright © 2019 板垣智也. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var addedText: UITextField!
    
    var todoListContents = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (UserDefaults.standard.object(forKey: "todoListContents") != nil) {
            todoListContents = UserDefaults.standard.object(forKey: "todoListContents") as! [String]
        }
        
    }

    @IBAction func tapCancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapAddTask(_ sender: Any) {
        if let newTask = addedText.text {
            todoListContents.append(newTask)
            addedText.text = ""
            UserDefaults.standard.set(todoListContents, forKey: "todoListContents")
        } else {
            // Toastでアラートする予定
        }
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
