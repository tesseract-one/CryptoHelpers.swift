Pod::Spec.new do |s|
  s.name             = 'UncommonCrypto'
  s.version          = '0.1.2'
  s.summary          = 'Swift wrapper over CommonCrypto with Linux support.'

  s.description      = <<-DESC
  Swift wrapper over CommonCrypto with alternative C implementation for Linux support.
                       DESC

  s.homepage         = 'https://github.com/tesseract-one/UncommonCrypto.swift'

  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'Tesseract Systems, Inc.' => 'info@tesseract.one' }
  s.source           = { :git => 'https://github.com/tesseract-one/UncommonCrypto.swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  
  s.swift_versions = ['5', '5.1', '5.2', '5.3']

  s.module_name = 'UncommonCrypto'

  s.source_files = 'Sources/UncommonCrypto/*.swift', 'Sources/CUncommonCrypto/**/*.{h,c}'
  s.public_header_files = 'Sources/CUncommonCrypto/include/*.h'
 
  s.test_spec 'Tests' do |test_spec|
    test_spec.platforms = {:ios => '9.0', :osx => '10.10', :tvos => '9.0'}
    test_spec.source_files = 'Tests/UncommonCryptoTests/**/*.swift'
  end
end
