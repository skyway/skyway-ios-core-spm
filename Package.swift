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
            url: "https://github.com/skyway/ios-sdk/releases/download/2.1.2/SkyWayCore.xcframework.zip",
            checksum: "bc551986ffc8c76ace32f01f58164d47fe98e11ce576b45dce95558175143ec3"),
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/skyway/skyway-ios-webrtc-specs/releases/download/120.0.0/WebRTC.xcframework.zip",
            checksum: "6883b2e09669e380041bac4097c40644681c63fd78772dcd94416b4d3fce1317"),
    ],
    swiftLanguageVersions: [.v5]
)
