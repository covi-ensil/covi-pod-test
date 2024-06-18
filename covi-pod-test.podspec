#
# Be sure to run `pod lib lint covi-pod-test.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'covi-pod-test'
  s.version          = '0.1.7'
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
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'covi-ensil' => 'ensil@covi.co.kr' }
  s.source           = { :git => 'https://github.com/covi-ensil/covi-pod-test.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.readme = "https://github.com/covi-ensil/covi-pod-test/blob/master/README.md"
  s.vendored_frameworks = './covi-pod-test/Classes/AnimalFramework.xcframework/'

  s.ios.deployment_target = '12.0'

  s.source_files = 'covi-pod-test/Classes/**/*.{swift}'
  
  # s.resource_bundles = {
  #   'covi-pod-test' => ['covi-pod-test/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
