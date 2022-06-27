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
            url: "https://github.com/Leap-Platform/leap-core-dev/releases/download/2.3.1/LeapCoreSDK.xcframework.zip",
            checksum: "31a9815043d9e00d7ab85ae71dd1165c320785326f288649d4a3ffab9f705aab"
        )
    ]
)
