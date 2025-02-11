
Pod::Spec.new do |spec|

  spec.name         = "LOGINVCPOD"
  spec.version      = "1.0.0"
  spec.summary      = "this for testing"
  spec.description  = "This is testing trdting"

  spec.homepage     = "https://github.com/jeni909/Testing.git"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { "jeni Kakadiya" => "jeni.arvaan@gmail.com" }
  spec.platform     = :ios, "17.4"
  spec.swift_versions = "5.6"

  spec.source       = { :git => "https://github.com/jeni909/Testing.git", :tag => spec.version }


  spec.source_files = "Testing/LoginVC/**/*.{swift,h,m}"

  spec.exclude_files = "Testing/Exclude/**"

  
 
end
