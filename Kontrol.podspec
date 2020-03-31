#  http://docs.cocoapods.org/specification.html

Pod::Spec.new do |s|
  s.name         = "Kontrol"
  s.version      = "0.0.3"
  s.summary      = "Form validation library"
  s.description  = <<-DESC
			Kontrol
  			Form validation library
                   DESC

  s.homepage     = "https://github.com/okrek/Kontrol-iOS"
  s.license      = { :type => "MIT", :file => "LICENSE.txt" }

  s.author    = "Maxim Pisarenko"
  s.platform     = :ios, '8.0'
  s.source       = { :git => "https://github.com/okrek/Kontrol-iOS.git", :tag => "#{s.version}" }
  s.source_files  = 'Kontrol/**/*.{swift,h,m}'
  s.swift_version = '5.0'
end
