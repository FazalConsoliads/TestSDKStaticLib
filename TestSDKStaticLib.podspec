#
# Be sure to run `pod lib lint TestSDKStaticLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestSDKStaticLib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TestSDKStaticLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/FazalConsoliads/TestSDKStaticLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'FazalConsoliads' => '66841044+FazalConsoliads@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/FazalConsoliads/TestSDKStaticLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TestSDKStaticLib/Classes/**/*'
  
  s.requires_arc = true
  
  s.pod_target_xcconfig = {
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 armv7',
  }
  
  s.user_target_xcconfig = {
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64',
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 armv7',
  }
  
  s.ios.vendored_library = 'TestSDKStaticLib/libConsoliAd.a'

  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/TestSDKStaticLib"'
  }
  
  s.resource_bundles = {
     'TestSDKStaticLib' => ['TestSDKStaticLib/Assets/*.{xib,png}']
  }
  
  # s.resource_bundles = {
  #   'TestSDKStaticLib' => ['TestSDKStaticLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
