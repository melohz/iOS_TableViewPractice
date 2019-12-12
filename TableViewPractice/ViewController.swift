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
    let todo = ["一日やりきる", "諦めない心を持つ", "めげない"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customTableView.register(UINib(nibName: "CustomViewCell", bundle: nil), forCellReuseIdentifier: "reusableCell")
    }
    
    // セルの個数を指定する
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 // todo.count
    }
    
    // セルに値を設定する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルの取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath) as! CustomViewCell
        cell.setupCell(indexPath: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = todo[indexPath.row % 3]
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

