
Pod::Spec.new do |s|

  s.name         = "MLSExcelView"
  s.version      = "0.0.1"
  s.summary      = "自定义表格布局视图"
  s.description  = <<-DESC
                    类似 excel 表格的原生页面视图布局
                   DESC

  s.homepage     = "https://github.com/Minlison/MLSExcelView.git"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "Apache", :file => "LICENSE" }
  s.author             = { "MinLison" => "yuanhang.1991@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Minlison/MLSExcelView.git", :tag => "#{s.version}" }
  s.source_files  = "MLSExcelView/**/*.{h,m}"
  s.public_header_files = "MLSExcelView/**/*.h"
  s.frameworks = "UIKit"
  s.requires_arc = true
end
