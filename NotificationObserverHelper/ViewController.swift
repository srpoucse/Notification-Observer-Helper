
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


import UIKit

class ViewController: UIViewController {

    var keyboardObserver : NotificationObserver?
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyboardObserver = NotificationObserver(name: UIResponder.keyboardDidShowNotification, handler: { (note) -> (Void) in
            print("Did Show Keyboard")
        })
        
        //create a timer that set the keyboard observer to nil and there by you will not receive any more notification and observer is release safely
        timer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(deleteObserver), userInfo: nil, repeats: false)
    }

    @objc func deleteObserver() {
        self.keyboardObserver = nil
        timer?.invalidate()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
