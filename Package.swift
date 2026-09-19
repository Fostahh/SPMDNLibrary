// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DNLibrary",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "DNLibrary", targets: ["DNLibrary"])
    ],
    targets: [
        .binaryTarget(
            name: "DNLibrary",
            url: "https://github.com/Fostahh/SPMDNLibrary/releases/download/0.15.0/DNLibrary.zip",
            checksum: "1fa63f2e5cbc87e5e21e71f85d00152e14c02e364d75497c419e7a7f8dd8c3fb"
        )
    ]
)
