require 'fileutils'

source 'https://github.com/CocoaPods/Specs.git'

workspace 'WeatherForecast.xcworkspace'
use_frameworks!
platform :ios, '13.0'
inhibit_all_warnings!

def common
  pod 'SwiftLint'
  pod 'XCGLogger'
end

def platform_app_common
  pod 'Moya'
  pod 'RealmSwift'
end

def test_common
  pod 'Quick'
  pod 'Nimble'
  pod 'Cuckoo'
end

target 'WeatherForecast' do
  inhibit_all_warnings!
  inherit! :search_paths
  common
  platform_app_common
  
  pod 'SVProgressHUD'
  pod 'Wormholy', :configuration => ['Debug']
end

target 'WeatherForecastTests' do
    inherit! :search_paths
    test_common
    common
    platform_app_common
    
    pod 'SVProgressHUD'
    pod 'Wormholy', :configuration => ['Debug']
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
