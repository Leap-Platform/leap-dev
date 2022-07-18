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
            url: "https://github.com/Leap-Platform/leap-core-dev/releases/download/3.0.0/LeapCoreSDK.xcframework.zip",
            checksum: "5fa3d6a72fb5f64b7149d8de1014a8979ef6c68f1a15660e077b11cbf1e8ed36"
        )
    ]
)
