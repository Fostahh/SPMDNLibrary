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
            url: "https://github.com/Fostahh/SPMDNLibrary/releases/download/0.18.0/DNLibrary.zip",
            checksum: "843353d59e0a8b6b4ffa01ab02f56eb1885c0186accf4eb6b08a28023e542144"
        )
    ]
)
