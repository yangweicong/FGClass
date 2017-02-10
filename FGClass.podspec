Pod::Spec.new do |s|

  s.name         = "FGClass"
  s.version      = "1.0.2"
  s.summary      = "火鹰科技iOS常用类"
  s.homepage     = "https://github.com/yangweicong/FGClass"
  
  s.license      = { 
        :type => "MIT", 
        :file => "LICENSE" 
  }

  s.author              = {
      "figo_ywc" => "yangwc@figo.cn"
  }
  s.source              = {
        :git => 'https://github.com/yangweicong/FGClass.git',
        :tag => s.version.to_s
    }
  # s.ios.deployment_target = '8.0'
  s.platform     = :ios, '8.0'
  # s.source_files        = 'FGClass/**/*.{h,m}'
  s.source_files        = 'FGClass/*.{h,m}'
  s.private_header_files = 'FGClass/FGClass.h'
  s.requires_arc        = true
  s.framework  = "UIKit"
  
  s.dependency "Masonry" 
  s.dependency "TPKeyboardAvoiding"

#显示文件夹
  s.subspec 'Base' do |ss|
    ss.source_files = 'FGClass/Base/*.{h,m}'
  end
  s.subspec 'Common' do |ss|
    ss.source_files = 'FGClass/Common/*.{h,m}'
  end
  # s.subspec 'Base' do |ss|
  #   ss.source_files = 'FGClass/Base/*.{h,m}'
  # end


end