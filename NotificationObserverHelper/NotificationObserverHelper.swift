
/*
 Copyright (c) 2017 Ratna Paul Saka. All rights reserved.
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 of the Software, and to permit persons to whom the Software is furnished to do
 so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import Foundation

extension NotificationCenter {
    func addObserver(name: Notification.Name, using block:@escaping (Notification)->(Swift.Void)) -> NSObjectProtocol {
        return addObserver(forName: name, object: nil, queue: nil) { note in
            block(note)
        }
    }
}

class NotificationObserver : NSObject {
    let name : Notification.Name
    let handler : (Notification)->(Swift.Void)
    let notificationCenter : NotificationCenter
    private var observer : NSObjectProtocol
    init(_ notificationCenter: NotificationCenter = NotificationCenter.default, name : Notification.Name, handler: @escaping (Notification)->(Swift.Void)) {
        self.notificationCenter = notificationCenter
        self.name = name
        self.handler = handler
        self.observer = notificationCenter.addObserver(name: name, using: handler)
    }
    deinit {
        NotificationCenter.default.removeObserver(observer)
    }
}
