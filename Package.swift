// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LeapSDK",
    products: [
        .library( name: "LeapSDK", targets: ["LeapSDK","LeapCoreSDK"] )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "LeapSDK", path: "LeapSDK.xcframework"),
        .binaryTarget(
            name: "LeapCoreSDK", 
            url: "https://github.com/Leap-Platform/leap-core-dev/releases/download/2.0.64/LeapCoreSDK.xcframework.zip",
            checksum: "3624ca86c7681fd4df0cf8864d5d91c1039dd63de6bee64198f4fa2837965366"
        )
    ]
)
