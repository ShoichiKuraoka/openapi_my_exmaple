Pod::Spec.new do |s|
  s.name = 'KariAPI'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '0.0.1'
  s.source = { :git => "https://github.com/ShoichiKuraoka/openapi_my_exmaple.git"}
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.source_files = 'Swift/build/KariAPI/Classes/**/*.swift'
  s.dependency 'RxSwift'
  s.dependency 'Alamofire'
end
