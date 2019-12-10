//
//  ViewController.swift
//  TableViewPractice
//
//  Created by 板垣智也 on 2019/12/10.
//  Copyright © 2019 板垣智也. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let todo = ["一日やりきる", "諦めない心を持つ", "めげない"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // セルの個数を指定する
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.count
    }
    
    // セルに値を設定する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルの取得
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // セルにｓ表示する値を設定する
        cell.textLabel!.text = todo[indexPath.row]
        return cell
    }
}

