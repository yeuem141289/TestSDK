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
        .package(url: "https://github.com/aws-amplify/amplify-ui-swift-liveness", from: "1.4.2"),
    ],
    targets: [
        .target(
            name: "TestSDK",
            dependencies: [
                "FaceLiveness"
            ]
        )

    ]
)
