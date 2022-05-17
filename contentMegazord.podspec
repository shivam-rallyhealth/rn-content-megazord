# contentMegazord.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "ContentMegazord"
  s.version      = package["version"]
  s.summary      = "React Native Modules for ContentMegazord"
  s.description  = <<-DESC
                  react-native-test-module
                   DESC
  s.homepage     = "https://content.werally.com"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Falcons-Rallyhealth" => "falcons@rallyhealth.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-test-module.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

