#
# Be sure to run `pod lib lint covi-pod-test.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'covi-pod-test'
  s.version          = '0.2.12'
  s.swift_versions = '5.0'
  s.summary          = 'pod test for covisdk.'
  s.description      = <<-DESC
  SDK for inserting CoviPlayer with VAST specifications and Viewability into your project
                       DESC
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://www.covi.co.kr/'
  s.readme = "README.md"
  s.author           = { 'COVI' => 'ensil@covi.co.kr' }
  s.source           = { :git => 'https://github.com/covi-ensil/covi-pod-test.git', :tag => s.version.to_s }
  s.vendored_frameworks = 'covisdk.xcframework'
  s.ios.deployment_target = '12.0'
#  s.source_files = 'covi-pod-test/Classes/**/*.{swift}'
  s.dependency 'Alamofire', '~> 5.4.0'
  s.dependency 'SDWebImage', '~> 5.0'
  s.dependency 'SwiftyXMLParser', '~> 5.3.0'
  s.dependency 'Player', '~> 0.13.0'
end
