//
//  NotificationObserverHelperTests.swift
//  NotificationObserverHelperTests
//
//  Created by Ratna Saka on 3/28/17.
//  Copyright © 2017 srp. All rights reserved.
//

import XCTest
@testable import NotificationObserverHelper

class NotificationObserverHelperTests: XCTestCase {
    
    var observer : NotificationObserver?
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIfNotificationObserverIsReleasedCorrectly() {
        var notificationDidFire = false
        let notification = "TestNotification"
        observer = NotificationObserver(name: Notification.Name(notification)) { (note) -> (Void) in
            notificationDidFire = true
        }
        NotificationCenter.default.post(name: Notification.Name(notification), object: nil)
        XCTAssert(notificationDidFire)
        
        notificationDidFire = false
        observer = nil
        XCTAssert(notificationDidFire == false)
    }
    
}
