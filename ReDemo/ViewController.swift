//
//  ViewController.swift
//  ReDemo
//
//  Created by RyohTsukahara on 12/17/15.
//  Copyright © 2015 test. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    // MARK: - IBOutlets -
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var tableView: UITableView!

    // MARK: - LifeCycles -
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - IBActions -
    @IBAction func buttonTapped(sender: AnyObject) {
        // 空文字チェック
        if !isValidateInputContents() {
            return
        }

        // realmに保存
        let todo = Todo()
        todo.name = textfield.text!
        todo.writeToRealm(todo)
        print(todo.todoItems)

        // 保存したらテキストフィールド初期化
        textfield.text = ""

        // tableviewを更新
        tableView.reloadData()
    }

    private func isValidateInputContents() -> Bool {
        // 名前の入力
        if let name = textfield.text {
            if name.isEmpty {
                return false
            }
        }else{
            return false
        }
        return true
    }

    // MARK: - TableViewDataSouce -
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let todo = Todo()
        return todo.todoItems?.count ?? 0
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableViewCell
        let toDo = Todo().todoItems?[indexPath.row]
        cell.labelText?.text = toDo?.name
        return cell
    }

}
