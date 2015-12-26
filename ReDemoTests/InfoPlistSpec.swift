//
//  InfoPlistSpec.swift
//  ReDemo
//
//  Created by RyohTsukahara on 12/24/15.
//  Copyright © 2015 test. All rights reserved.
//

import UIKit
import Quick
import Nimble

@testable import ReDemo

class InfoPlistSpec: QuickSpec {
    override func spec() {
        describe("Testing info plist") {

            it ("アプリ名のテスト") {
                let infoDictionary: NSDictionary = NSBundle.mainBundle().infoDictionary as NSDictionary!
                let appName: String = infoDictionary.objectForKey("CFBundleName") as! String

                expect(appName).to(equal("ReDemo"))
            }

            it ("Bundle idのテスト") {
                let infoDictionary: NSDictionary = NSBundle.mainBundle().infoDictionary as NSDictionary!
                let bundleId: String = infoDictionary.objectForKey("CFBundleIdentifier") as! String

                expect(bundleId).to(equal("test.ReDemo"))
            }
        }

    }
}
