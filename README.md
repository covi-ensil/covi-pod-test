# covi-pod-test
[![COVI](https://img.shields.io/badge/covi-iOS_SDK-brightgreen.svg)](https://github.com/covi-ensil/covi-pod-test)
[![Version](https://img.shields.io/cocoapods/v/covi-pod-test.svg?style=flat)](https://cocoapods.org/pods/covi-pod-test)
[![Platform](https://img.shields.io/cocoapods/p/covi-pod-test.svg?style=flat)](https://cocoapods.org/pods/covi-pod-test)
[![License](https://img.shields.io/cocoapods/l/covi-pod-test.svg?style=flat)](https://cocoapods.org/pods/covi-pod-test)

## SDK 적용 가이드
[링크](https://github.com/covigroup/covi-ios-sdk-guide/wiki)

## 에러 핸들링
- `dlyd missing symbol called`에러가 발생한다면, Podfile에서 covi-pod-test 관련 타겟들의 config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION']을 'YES'로 설정해주세요.

```ruby
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
    end
  end
end
