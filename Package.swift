// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SkyWayCore",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SkyWayCore",
            targets: ["SkyWayCore", "WebRTC"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "SkyWayCore",
            url: "https://github.com/skyway/ios-sdk/releases/download/1.2.0/SkywayCore.xcframework.zip",
            checksum: "3fd699cd132a8f026937c16dfde146bc3b5fe57c5f847129e19081dcf8909436"),
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/skyway/skyway-ios-webrtc-specs/releases/download/104.0.1/WebRTC.xcframework.zip",
            checksum: "9e6def6a337b8259fdfb2fef623e8b79947a6a1c4de9f9049d62fae0a21e012a"),

    ],
    swiftLanguageVersions: [.v5]
)
