// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DNLibrary",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DNLibrary",
            targets: ["DNLibrary"])
    ],
    targets: [
        .binaryTarget(
            name: "DNLibrary",
            url: "https://github.com/Fostahh/SPMDNLibrary/releases/download/1.1.0/DNLibrary.zip",
            checksum: "c0c29174cd2a6fca858c0f30fbfa8b22bcc6946c64c63230269c2a622f89fd81"
        )
    ]
)
