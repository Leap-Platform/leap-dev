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
            url: "https://github.com/Leap-Platform/leap-core-dev/releases/download/2.0.70/LeapCoreSDK.xcframework.zip",
            checksum: "e614013e4a3d0445398f794419b8c500b8c1fe57c8474451335ba7d8bbcfc0b4"
        )
    ]
)
