Pod::Spec.new do |s|
  s.name             = 'Animoji'
  s.version          = '0.0.1'
  s.summary          = 'Animoji'
  s.homepage         = 'https://github.com/efremidze/Animoji'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'efremidze' => 'efremidzel@hotmail.com' }
  s.source           = { :git => 'https://github.com/efremidze/Animoji.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'Sources/*.swift'
end
