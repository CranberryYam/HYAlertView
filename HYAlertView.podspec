#
# Be sure to run `pod lib lint HYAlertView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HYAlertView'
  s.version          = '1.0.0'
  s.summary          = 'A custom AlertView made by Henry Yi.'


  s.homepage         = 'https://github.com/CranberryYam/HYAlertView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CranberryYam' => '1113145615yihl@gmail.com' }
  s.source           = { :git => 'https://github.com/CranberryYam/HYAlertView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'HYAlertView/Classes/**/*'
  
  s.resource_bundles = {
     'HYAlertView' => ['HYAlertView/**/*.png', 'HYAlertView/**/*.xib']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
