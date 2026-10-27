Pod::Spec.new do |s|
  s.name             = 'APIVervePDFPageNumbers'
  s.version          = '1.2.3'
  s.summary          = 'PDF Page Numbers stamps a page number on every page of a PDF, uploaded or fetched from a URL, and returns a download link to the...'
  s.description      = <<-'DESC'
PDF Page Numbers stamps a page number on every page of a PDF, uploaded or fetched from a URL, and returns a download link to the numbered file. Choose the corner or edge and the font size. Paid plans can also set a label format such as Page 3 of 12, the starting number, and skip a cover page.

This iOS/macOS SDK provides a convenient way to access the PDF Page Numbers from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/pdfpagenumbers?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/pdfpagenumbers-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVervePDFPageNumbers/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
