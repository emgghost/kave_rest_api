# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kave_rest_api/version'

Gem::Specification.new do |spec|
  spec.name          = "kave_rest_api"
  spec.version       = KaveRestApi::VERSION
  spec.authors       = ["mohammad mahmoudi"]
  spec.email         = ["mm580486@gmail.com"]

  spec.summary       = %q{Ruby gem to send and receive SMS via kavenegar API(rest) }
  spec.description   = %q{
    Ruby gem to send and receive SMS via kavenegar API(rest)
    kavenegar is great services for send and receive sms this service has a some feature like verification sms or voice service , etc
  }
  spec.homepage      = "https://github.com/mm580486/kave_rest_api/"
  spec.license       = "MIT"
  spec.required_ruby_version = '>= 2.7.0'

  spec.files         = Dir['lib/**/*.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # وابستگی‌های اصلی آپدیت شده برای سازگاری با Faraday نسخه 2 و روبی مدرن
  spec.add_dependency "i18n"
  spec.add_dependency "faraday", ">= 2.0"
  spec.add_dependency "faraday_middleware", ">= 1.0"  
  spec.add_dependency "json"
  spec.add_dependency "feedjira", ">= 3.0"
  spec.add_dependency "validatable", ">= 1.6"

  # وابستگی‌های محیط توسعه
  spec.add_development_dependency "bundler", ">= 2.0"
  spec.add_development_dependency "rake", ">= 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end