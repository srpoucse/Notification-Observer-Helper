
Pod::Spec.new do |s|
s.name = 'NotificationObserverHelper'
s.version = '1.0.1'
s.ios.deployment_target  = '8.0'
s.source        = { :git => 'https://github.com/srpoucse/Notification-Observer-Helper.git', :tag => "1.0.1"}
s.homepage      = 'https://github.com/srpoucse/Notification-Observer-Helper.git'
s.summary       =  'iOS Notification Observer Helper Utility'
s.license       = { :type => 'MIT', :file => 'LICENSE'}
s.authors       =  { 'RATNA PAUL SAKA' => 'pauljason89442@gmail.com' }
s.source_files  = 'NotificationObserverHelper/**/*.{swift}'
s.resources     = 'NotificationObserverHelper/**/*.{storyboard,xib,xcassets}'
end