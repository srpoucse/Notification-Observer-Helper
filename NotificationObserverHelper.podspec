
Pod::Spec.new do |s|
s.name = 'NotificationObserverHelper'
s.version = '1.2'
s.ios.deployment_target  = '10.0'
s.source        = { :git => 'https://github.com/srpoucse/Notification-Observer-Helper.git', :tag => "#{s.version}"}
s.homepage      = 'https://github.com/srpoucse/Notification-Observer-Helper.git'
s.summary       =  'iOS Notification Observer Helper Utility'
s.license       = { :type => 'MIT', :file => 'LICENSE'}
s.authors       =  { 'RATNA PAUL SAKA' => 'pauljason89442@gmail.com' }
s.source_files  = 'NotificationObserverHelper/NotificationObserverHelper.swift'
s.swift_version = '4.2'
end