require "json"

package = JSON.parse(File.read(File.join(__dir__, "../", "package.json")))

Pod::Spec.new do |s|
  s.name         = "AnylineReact"
  s.version      = package["version"]
  s.summary      = "anyline-ocr-react-native-module"
  s.authors      = {
    'Jonas Laux' => 'jonas@anyline.com',
    'Mike Chudziak' => 'mike.chudziak@callstack.io',
  }

  s.homepage     = "https://github.com/Anyline/anyline-ocr-react-native-module"

  s.license      = "MIT"
  s.platform     = :ios, "12"

  s.source       = { :git => "https://github.com/Anyline/anyline-ocr-react-native-module.git", :tag => "#{s.version}" }

  s.source_files  = "*.{h,m,swift}"
  s.public_header_files = '*.h'
  #s.dependency "Anyline", "~> 28.1"
  s.dependency "AnylineUIKit", "~> 0.0.3"
  s.static_framework = true
  
  s.dependency "React"


#  s.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/AnylineReact' }

end
