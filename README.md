# Notification-Observer-Helper
When using block based API to register as an observer for notification from NSNotificationCenter, we will have to remove observer manually. 
or when using selector based API to register as an observer for notification from NSNotificationCenter, we will have to create a new function to respond to the notification.



This utility aims at solving this problem. 

1)Create a instance of NotificationObserver class with the notification you want to register
2)Hold a reference to it as long as you need it

and voila you are done.

Don't ever worry about removing observer or creating a new function again!!!

The above code contains 

1)An example project
2)Tests to validate it

Please look into NotificationObserverHelper.swift for more details.

The advantages i have had so far 

- Register as observer for all your notification at one place.
- Makes code more readable as we do not create any more functions to register as selectors.
- We use a block based API and thus makes it easy to use and declarative.


Examples Without using Utility 

------------------------------------------------------------------------------------------

1)Add Observer

var observer = NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardDidShow, object: nil, queue: nil){}
}

2)Remove observer 

NotificationCenter.default.removeObserver(observer)

------------------------------------------------------------------------------------------


1)Add Observer


NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(note:)), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
}

2)Write a function that responds to a notification 

func keyboardDidShow(note: Notification) {

}

------------------------------------------------------------------------------------------




Examples using Utility 

------------------------------------------------------------------------------------------



1)Create a variable 

var keyboardObserver = NotificationObserver(name: NSNotification.Name.UIKeyboardDidShow, handler: { (note) -> (Void) in
        print("Did Show Keyboard")
    })


