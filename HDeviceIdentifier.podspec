Pod::Spec.new do |spec|
  spec.name         = "HDeviceIdentifier"
  spec.version      = "0.1.1"
  spec.summary      = "封装了持久化保存/查看设备唯一标识的功能, 并且可以判断应用是不是第一次安装 (UUID+KeyChain)"

  # spec.description  = <<-DESC
  #                  DESC

  spec.homepage     = "https://blog.wskfz.com/index.php/archives/28/"
  spec.license      = "MIT"

  spec.author             = { "Hext123" => "hext123@foxmail.com" }
  spec.social_media_url   = "https://blog.wskfz.com/"

  spec.platform     = :ios, "8.0"
  spec.source       = { :git => "https://github.com/Hext123/HDeviceIdentifier.git", :tag => spec.version.to_s }

  spec.source_files  = "HDeviceIdentifier/HDeviceIdentifierUtils/**/*.{h,m}"
  spec.public_header_files = "HDeviceIdentifier/HDeviceIdentifierUtils/HDeviceIdentifier.h"

  non_arc_files = 'HDeviceIdentifier/HDeviceIdentifierUtils/SFHFKeychainUtils.{h,m}'
  spec.exclude_files = non_arc_files

  spec.subspec 'no-arc' do |sp|
    sp.source_files = non_arc_files
    sp.requires_arc = false
  end

end
