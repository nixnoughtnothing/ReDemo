//
//  TodoTests.swift
//  ReDemo
//
//  Created by RyohTsukahara on 12/19/15.
//  Copyright © 2015 test. All rights reserved.
//

import XCTest
@testable import ReDemo

class TodoTests: XCTestCase {

    // MARK: - Setup -
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: - Todo -
    func testTodo() {
        let todo = Todo()
        todo.name = "buy food"


        self.measureBlock {
            todo.writeToRealm(todo)
            XCTAssertTrue(todo.todoItems?.count > 0)
            XCTAssertNotNil(todo.todoItems)
            XCTAssertEqual(todo.todoItems?.last?.name, "buy food")
        }
    }

    // MARK: - Performance -
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
