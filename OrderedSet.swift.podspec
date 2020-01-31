Pod::Spec.new do |spec|
  spec.name = 'OrderedSet.swift'
  spec.version = '0.1.0'
  spec.summary = 'Ordered Set implementation for Swift'
  spec.homepage = 'https://github.com/cocodelabs/OrderedSet'
  spec.license = { :type => 'CUSTOM', :file => 'LICENSE.txt' }
  spec.author = { 'Kyle Fuller' => 'kyle@fuller.li' }
  spec.source = { :git => 'https://github.com/cocodelabs/OrderedSet.git', :tag => "#{spec.version}" }
  spec.source_files = 'Sources/OrderedSet/*.swift'
  spec.requires_arc = true
  spec.ios.deployment_target = '8.0'
  spec.osx.deployment_target = '10.10'
  spec.swift_version = '5.0'
end
