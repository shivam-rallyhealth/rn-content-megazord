# contentMegazord.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["title"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-test-module
                   DESC
  s.homepage     = package["homepage"]
  # brief license entry:
  # optional - use expanded license entry instead:
  s.license      = "MIT"
  s.authors      = { package["authors"] => package["contact"] }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-test-module.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true
  # ...
  # s.dependency "..."
  s.dependency "FBReactNativeSpec": package["podVersions"]["FBReactNativeSpec"][0],
  s.dependency "React-jsiexecutor": package["podVersions"]["React-jsiexecutor"][0],
  s.dependency "RCT-Folly": package["podVersions"]["RCT-Folly"][0],
  s.dependency "RCTRequired": package["podVersions"]["RCTRequired"][0],
  s.dependency "RCTTypeSafety": package["podVersions"]["RCTTypeSafety"][0],
  s.dependency "React-Core": package["podVersions"]["React-Core"][0],
  s.dependency "React-jsi": package["podVersions"]["React-jsi"][0],
  s.dependency "ReactCommon/turbomodule/core": package["podVersions"]["ReactCommon/turbomodule/core"][0]
end

