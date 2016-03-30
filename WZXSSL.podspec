Pod::Spec.new do |s|

  s.name          = "WZXSSL"
  s.version       = "1.0.0"
  s.license       = "MIT"
  s.summary       = "Fast encryption string used on iOS, which implement by Objective-C."
  s.homepage      = "https://github.com/Wzxhaha/WZXSSL"
  s.author        = { "WzxJiang" => "wzxjiang@foxmail.com" }
  s.source        = { :git => "https://github.com/Wzxhaha/WZXSSL.git", :tag => "1.0.0" }
  s.requires_arc  = true
  s.description   = <<-DESC
                  Fast encryption string, the current support for MD5 (16, 32), Sha1, Base64
                   DESC
  s.source_files  = "WZXSSLTool/*"
  s.platform      = :ios, '7.0'
  s.framework     = 'Foundation', 'CoreGraphics', 'UIKit'  

end