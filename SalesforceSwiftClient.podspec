Pod::Spec.new do |s|
  s.name = 'SwaggerClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '0.0.1'
  s.source = { :git => 'git@github.com/mavieth/SalesforceSwiftClient.git', :tag => 'v1.0.0' }
  s.authors = 'Michael Vieth'
  s.license = 'MIT'
  s.source_files = 'SwaggerClient/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.5.0'
end
