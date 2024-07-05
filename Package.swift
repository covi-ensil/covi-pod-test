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
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "5.4.0")),
        .package(name: "SDWebImage", url: "https://github.com/SDWebImage/SDWebImage.git", .upToNextMajor(from: "5.0.0")),
        .package(name: "SwiftyXMLParser", url: "https://github.com/yahoojapan/SwiftyXMLParser.git", .upToNextMinor(from: "5.3.0")),
        .package(name: "Player", url: "https://github.com/piemonte/Player.git", .upToNextMinor(from: "0.13.0"))
    ],
    targets: [
        .target(
            name: "covi-pod-test",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "SwiftyXMLParser", package: "SwiftyXMLParser"),
                .product(name: "Player", package: "Player"),
                "covisdk"
            ],
            path: "./Sources"
        ),
        .binaryTarget(
            name: "covisdk",
            path: "./covisdk.xcframework"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
