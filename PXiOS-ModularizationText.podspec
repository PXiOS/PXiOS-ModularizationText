#
# Be sure to run `pod lib lint PXiOS-ModularizationText.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PXiOS-ModularizationText'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PXiOS-ModularizationText.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'my fisrt try to build pods compone'

  s.homepage         = 'https://github.com/PXiOS/PXiOS-ModularizationText'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = 'MIT'
  s.author           = { 'PXiOS' => '3038392818@qq.com' }
  s.source           = { :git => 'https://github.com/PXiOS/PXiOS-ModularizationText.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'PXiOS-ModularizationText/Classes/*.{h,m}'
  
  # s.resource_bundles = {
  #   'PXiOS-ModularizationText' => ['PXiOS-ModularizationText/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  s.dependency 'LKDBHelper'
end
