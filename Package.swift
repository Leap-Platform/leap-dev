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
            url: "https://github.com/Leap-Platform/leap-core-dev/releases/download/2.0.69/LeapCoreSDK.xcframework.zip",
            checksum: "bc8a5ff26d2f8f031a4a686d26001131714a73c53860f355ec7309a84309cafb"
        )
    ]
)
