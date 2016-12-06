Pod::Spec.new do |s|

  s.name          = "WZXSSL"
  s.version       = "2.0.0"
  s.license       = "MIT"
  s.summary       = "Fast encryption string used on iOS, which implement by Objective-C."
  s.homepage      = "https://github.com/Wzxhaha/WZXSSL"
  s.author        = { "WzxJiang" => "wzxjiang@foxmail.com" }
  s.source        = { :git => "https://github.com/Wzxhaha/WZXSSL.git", :tag => "2.0.0" }
  s.requires_arc  = true
  s.description   = <<-DESC
                  Fast encryption string, the current support for MD5 (16, 32), Sha1, Base64,AES,DES
                   DESC
  s.source_files  = "WZXSSL/*"
  s.platform      = :ios, '8.0'
  s.framework     = 'Foundation'

end
