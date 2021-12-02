Pod::Spec.new do |spec|

  spec.name         = "stoneFramework"
  spec.version      = "1.3.0" #此处要与上传到Git的tag一致
  spec.summary      = "This is my test pod." #摘要，随便写
  spec.homepage     = "https://github.com/stone-4827321" #主页，随便写
  spec.license      = "MIT" #许可证类型，我只会MIT，其它的请自行Google
  spec.author       = { "stone" => "nezha@fengshen.com" } #作者和邮箱地址，随便写

  spec.platform     = :ios, "15.0" #支持的平台，以及支持的最低系统版本
  spec.source       = { :git => "https://github.com/stone-4827321/stoneFramework.git", :tag => "#{spec.version}" }
  spec.source_files = "stoneFramework.framework/Headers/*.{h}" #001号 坑

  spec.ios.vendored_frameworks = 'stoneFramework.framework' #003号 坑
  spec.requires_arc = true #是否需要ARC

end