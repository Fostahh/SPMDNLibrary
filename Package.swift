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
            url: "https://github.com/Fostahh/SPMDNLibrary/releases/download/0.17.0/DNLibrary.zip",
            checksum: "a627e8dd53e8b98f0e16ab1f7b0e2f5a28d739195fcbe88a2b3f53246bfbf25e"
        )
    ]
)
