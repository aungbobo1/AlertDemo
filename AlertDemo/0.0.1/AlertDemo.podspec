Pod::Spec.new do |spec|

  spec.name         = "AlertDemo"
  spec.version      = "0.0.1"
  spec.summary      = "This is just alert demo."

  spec.description  = <<-DESC
"This is just success alert and fail alert."
                   DESC

  spec.homepage     = "https://github.com/aungbobo1/AlertDemo"
  
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Aung Bo Bo" => "bobomechatronics1@gmail.com" }

  spec.platform     = :ios, "11.0"

  spec.source       = { :git => "https://github.com/aungbobo1/AlertDemo.git", :tag => "#{spec.version}" }

  spec.source_files  = "Alert Demo", "Alert Demo/**/*.{swift}"

  spec.resources = "Alert Demo/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

  spec.framework  = "UIKit"

  spec.swift_version = "5"

end
