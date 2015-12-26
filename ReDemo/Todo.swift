//
//  Todo.swift
//  ReDemo
//
//  Created by RyohTsukahara on 12/17/15.
//  Copyright © 2015 test. All rights reserved.
//

import Foundation
import RealmSwift

class Todo: Object {

    // MARK: - properties -
    dynamic var name = ""
    dynamic var deadline = NSDate()
    dynamic var isComplete:Bool = false

    var todoItems:Results<Todo>? {
        do {
            let realm = try Realm()
            return realm.objects(Todo)
        } catch {
            print("failed to get Data")
        }
        return nil
    }

    // MARK: - Write -
    func writeToRealm(todo:Todo) {
        do {
            let realm = try Realm()
            try! realm.write {
                realm.add(todo)
            }
        } catch {
            print("failed to save")
        }
    }
}
