#
# Be sure to run `pod lib lint covi-pod-test.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'covi-pod-test'
  s.version          = '0.2.3'
  s.swift_versions = '5.0'
  s.summary          = 'pod test for covi-ios-sdk.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  SDK for inserting CoviPlayer with VAST specifications and Viewability into your project
                       DESC

  s.homepage         = 'https://www.covi.co.kr/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'covi-ensil' => 'ensil@covi.co.kr' }
  s.source           = { :git => 'https://github.com/covi-ensil/covi-pod-test.git', :tag => s.version.to_s }
  s.readme = "https://github.com/covi-ensil/covi-pod-test/blob/master/README.md"
  s.vendored_frameworks = 'AnimalFramework.xcframework', 'covisdk.xcframework'

  s.ios.deployment_target = '12.0'

  s.source_files = 'covi-pod-test/Classes/**/*.{swift}'
  
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'SwiftyXMLParser', '~> 5.3.0'
  s.dependency 'Alamofire', '5.4.0'
  s.dependency 'SDWebImage', '~> 5.0'
  s.dependency 'Player', '~> 0.13.2'
end
