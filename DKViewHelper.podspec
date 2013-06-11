Pod::Spec.new do |spec|
    spec.name = 'DKViewHelper'
    spec.version = '1.0'
    spec.platform = :ios
    spec.source = { :git => 'https://github.com/DmitryKorotchenkov/DKViewHelper.git' }
    spec.source_files = 'Classes'
    spec.requires_arc = true
end