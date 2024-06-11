#
# Be sure to run `pod lib lint ChatNew.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ChatNew'
  s.version          = '0.1.2'
  s.summary          = 'A ChatTestDemo App That is Demo.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A ChatTestDemo App That is Demo. Once Intalled and the use it.'

  s.homepage         = 'https://github.com/sanjaykhatri02/ChatNew'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sanjay.khatri02@outlook.com' => 'sanjay.khatri02@outlook.com' }
  s.source           = { :git => 'https://github.com/sanjaykhatri02/ChatNew.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'Classes/**/*.{swift,h,m}'
#  s.public_header_files = 'Classes/**/*.h'
#  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/Classes' }
  
  s.resources = [
      'Resources/**/*.{png,jpeg,jpg,storyboard,xib}',
      'Resources/Xib/*.xib',
      'Resources/Assets/*.xcassets',
      'Resources/Fonts/*.{ttf,otf}',  # Include fonts from Fonts folder
      'Resources/**/*.gif'
    ]
  
  s.swift_version = ['4.0','5.0']
  
  # s.resource_bundles = {
  #   'ChatNew' => ['ChatNew/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  s.dependency 'Alamofire', '~> 5.9.0'
  s.dependency 'LMCSideMenu'
  s.dependency 'iOSDropDown'
  s.dependency 'ProgressHUD'
  s.dependency 'SwiftyJSON'
  s.dependency 'SVProgressHUD'
  s.dependency 'NVActivityIndicatorView'
  s.dependency 'IQKeyboardManager'
  s.dependency 'Firebase/Core'
  s.dependency 'Firebase/Messaging'
  s.dependency 'Kingfisher'
#  s.dependency 'SwiftEventBus'
#  s.dependency 'SwiftGifOrigin', '~> 1.7.0'
  s.dependency 'Swift-EventBus'
  s.dependency 'FMDB'
  s.dependency 'SwiftSignalRClient'
  s.dependency 'Toaster'
  s.dependency 'ImageLoader'
  s.dependency 'BSImagePicker'
  
  
end
