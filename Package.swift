// swift-tools-version:5.9
import PackageDescription

// Ví dụ cho SDK tên là MySDK
let package = Package(
    name: "TestSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "TestSDK", type: .dynamic, targets: ["TestSDK"]), // type: .dynamic
    ],
    dependencies: [
        // Khai báo dependency chính
        .package(url: "https://github.com/aws-amplify/amplify-ui-swift-liveness", from: "1.4.2"),
    ],
    targets: [
        .target(
            name: "TestSDK",
            // Khai báo dependency cho target, trỏ đến product "FaceLiveness"
            // trong package "amplify-ui-swift-liveness"
            dependencies: [
                .product(name: "FaceLiveness", package: "amplify-ui-swift-liveness")
            ]
        )

    ]
)
