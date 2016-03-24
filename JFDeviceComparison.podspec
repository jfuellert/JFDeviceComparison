Pod::Spec.new do |s|
  s.name             = 'JFDeviceComparison'
  s.version          = ‘0.0.2’
  s.summary          = 'JFDeviceComparison is a UIDevice category which is used to compare device versions.'
  s.description      = <<-DESC
                       JFDeviceComparison is a UIDevice category which is used to compare device versions. It uses the system machine information to determine and compare against device types.
                       DESC
  s.homepage         = 'https://github.com/jfuellert/JFDeviceComparison'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jfuellert' => 'jfuellert@gmail.com' }
  s.source           = { :git => 'https://github.com/jfuellert/JFDeviceComparison.git', :tag => s.version }
  s.platform         = :ios, ‘7.0’
  s.requires_arc     = true
	
  s.source_files     = 'JFDeviceComparison/JFDeviceComparison/**/*.{h,m}'
  s.public_header_files = 'JFDeviceComparison/JFDeviceComparison/UIDevice+JFDeviceComparison.h'

  s.frameworks          = 'UIKit'
end