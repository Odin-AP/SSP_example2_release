#
#  Be sure to run `pod spec lint AP_SSP.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |spec|

  spec.name         = "AP_SSP"
  spec.version      = "0.1.5"
  spec.summary      = "AdPopcorn SSP 관련 Common SDK."

  spec.description  = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  spec.homepage     = "https://github.com/Odin-AP/SSP_example2_release"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { "Odin-AP" => "odin.song@adpopcorn.com" }
  spec.source           = { :git => 'https://github.com/Odin-AP/SSP_example2_release.git', :tag => spec.version.to_s }
  spec.ios.deployment_target = '12.0'
    
  spec.ios.vendored_frameworks = 'SSP_Common/xcFrameWork/SSP_Common.xcframework'


end
