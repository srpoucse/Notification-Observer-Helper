# Notification-Observer-Helper
When using block based API to register as an observer for notification from NSNotificationCenter,we will have to release these objects manually. 

This utility aims at solving this problem. 

1)Create a instance of NotificationObserver with the notification you want to register
2)keep a reference to it as long as you need it

and voila you are done.

Don't ever worry about remove observer again!!!

The above code contains 
1)An example project
2)Tests to validate it

Please look into NotificationObserverHelper.swift for more details.
