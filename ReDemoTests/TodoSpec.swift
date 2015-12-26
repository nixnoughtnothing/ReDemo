//
//  TodoSpec.swift
//  ReDemo
//
//  Created by RyohTsukahara on 12/20/15.
//  Copyright © 2015 test. All rights reserved.
//

//import UIKit
import Quick
import Nimble

@testable import ReDemo

class TodoSpec: QuickSpec {

    override func spec() {
        // test code
        it("is 3") {
            expect(1 + 2).to(equal(3))
        }


        describe("Todo"){

            beforeEach {
            }

            it("todo itemの数は0以上") {
                let todo = Todo()
                expect(todo.todoItems?.count) >= 0
            }

            it("最新のtodoの値は「buy foo」である") {
                let todo = Todo()
                todo.name = "buy food"
                todo.writeToRealm(todo)
                expect(todo.todoItems?.last?.name).to(equal("buy food"))
            }
        }

    }
}
