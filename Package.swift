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
            targets: ["covisdk"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "5.4.0")),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/yahoojapan/SwiftyXMLParser.git", .upToNextMinor(from: "5.3.0")),
        .package(url: "https://github.com/piemonte/Player.git", .upToNextMinor(from: "0.13.0"))
    ],
    targets: [
        .binaryTarget(
            name: "covisdk",
            path: "./covisdk.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)
