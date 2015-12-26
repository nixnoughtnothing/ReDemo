//
//  InfoPlistTests.swift
//  ReDemo
//
//  Created by RyohTsukahara on 12/19/15.
//  Copyright © 2015 test. All rights reserved.
//

import XCTest

class InfoPlistTests: XCTestCase {

    // MARK: - SetUp -
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }


    // MARK: - InfoTest -
    func testAppName() {
        let infoDictionary: NSDictionary = NSBundle.mainBundle().infoDictionary as NSDictionary!
        let appName: String = infoDictionary.objectForKey("CFBundleName") as! String

        XCTAssertNotNil(appName)
        XCTAssertEqual(appName, "ReDemo")
    }

    func testBundleId() {
        let infoDictionary: NSDictionary = NSBundle.mainBundle().infoDictionary as NSDictionary!
        let bundleId: String = infoDictionary.objectForKey("CFBundleIdentifier") as! String
        XCTAssertNotNil(bundleId)
        XCTAssertEqual(bundleId, "test.ReDemo")
    }

    // MARK: - Performance -
    func testPerformanceExample() {
        self.measureBlock {
        }
    }

}
