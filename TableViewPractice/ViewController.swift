//
//  ViewController.swift
//  TableViewPractice
//
//  Created by 板垣智也 on 2019/12/10.
//  Copyright © 2019 板垣智也. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var customTableView: UITableView!
    var todoListContents = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customTableView.register(UINib(nibName: "CustomViewCell", bundle: nil), forCellReuseIdentifier: "reusableCell")
        
        if UserDefaults.standard.object(forKey: "todoListContents") != nil {
            todoListContents = UserDefaults.standard.object(forKey: "todoListContents") as! [String]
        }
    }
    @IBAction func tapAddButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "addTaskVC") as! AddTaskViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    // セルの個数を指定する
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        todoListContents.count
    }
    
    // セルに値を設定する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルの取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath) as! CustomViewCell
        cell.setupCell(indexPath: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = todoListContents[indexPath.row]
        return cell
    }
    
    // シンプルなセクションヘッダー
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Section: \(section)"
//    }
    
    // UIViewを用いたセクションヘッダー
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vm = UIView()
        
        vm.backgroundColor = UIColor.red
        
        return vm
    }
    
}

