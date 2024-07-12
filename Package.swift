// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "covi-pod-test",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "covi-pod-test",
            targets: ["covi-pod-test"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "covi-pod-test",
            path: "./covisdk.xcframework"
        ),
    ]
)
