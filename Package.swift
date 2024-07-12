// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "covi-pod-test",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "covi-pod-test",
            targets: ["covi-pod-test"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "covisdk",
            path: "./covisdk.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)
