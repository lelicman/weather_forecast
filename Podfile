require 'fileutils'

source 'https://github.com/CocoaPods/Specs.git'

workspace 'WeatherForecast.xcworkspace'
use_frameworks!
platform :ios, '9.0'
inhibit_all_warnings!

def common
  pod 'SwiftLint', '0.39.2'
  pod 'XCGLogger', '7.0.1'
end

def platform_app_common
  pod 'Moya', '13.0.1'
  pod 'RealmSwift', '5.0.3'
end

def test_common
  pod 'Quick', '3.0.0'
  pod 'Nimble', '8.1.1'
  pod 'Cuckoo', '1.3.2'
end

target 'WeatherForecast' do
  inhibit_all_warnings!
  inherit! :search_paths
  common
  platform_app_common
  
  pod 'SVProgressHUD', '2.2.5'
  pod 'Wormholy', '1.6.2', :configuration => ['Debug']
end

target 'WeatherForecastTests' do
    inherit! :search_paths
    test_common
    common
    platform_app_common
    
    pod 'SVProgressHUD', '2.2.5'
    pod 'Wormholy', '1.6.2', :configuration => ['Debug']
end

target 'Domain' do
  inherit! :search_paths
  common
end

target 'DomainTests' do
  inherit! :search_paths
  common
  test_common
end

target 'Platform' do
  inherit! :search_paths
  common
  platform_app_common
end

target 'PlatformTests' do
  inherit! :search_paths
  test_common
  common
  platform_app_common
end
