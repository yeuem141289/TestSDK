Pod::Spec.new do |s|
  s.name             = 'TestSDK'
  s.version          = '1.0.0'
  s.summary          = 'A short description of MyPod.'
  s.description      = 'dep trai'
                       
  s.homepage         = 'https://github.com/yeuem141289/TestSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' } # Đảm bảo bạn có file LICENSE
  s.author           = { 'Your Name' => 'your-email@example.com' }
  s.ios.deployment_target = '14.0' # Hoặc phiên bản iOS tối thiểu mà bạn hỗ trợ

  s.source           = { :git => 'https://github.com/yeuem141289/TestSDK.git', :tag => s.version.to_s }
  s.source_files     = 'TestSDK/**/*.{h,m,swift}' # Đường dẫn đến mã nguồn Swift của bạn

  s.swift_version    = '6.0' # Phiên bản Swift bạn sử dụng

  # --- KHAI BÁO DEPENDENCIES TỪ SPM ---

  # 1. Khai báo dependency cho Amazon SDK (SPM)
  # Đây là cách bạn nói với CocoaPods rằng pod của bạn phụ thuộc vào một Swift Package
  s.dependency 'AmplifyUILiveness', '~> 1.4.2' # Ví dụ, thay thế bằng các module AWS bạn cần
  

  # 2. Khai báo dependency cho BluetoothIO.xcframework (Binary Framework đã build sẵn)
  # Nếu BluetoothIO là một binary framework đã build sẵn và nằm trong repo của bạn
 # s.ios.vendored_frameworks = 'VendorFrameworks/BluetoothIO.xcframework'
  # Hoặc nếu BluetoothIO cũng là một CocoaPod/SPM riêng biệt, bạn sẽ thêm s.dependency 'BluetoothIO', '~> 1.0.0'

  # Nếu MyPod của bạn cần các flags của trình biên dịch hoặc linker đặc biệt
  # s.xcconfig = { 'OTHER_LDFLAGS' => '-lsqlite3' }

  # Nếu MyPod là một Swift Package hoàn chỉnh và bạn đang tạo một podspec cho nó:
  # s.source_files = 'Sources/**/*.swift'
  # s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  # s.vendored_frameworks = 'Path/To/Your/Custom/Frameworks.framework' # Nếu bạn đã build frameworks của mình
end