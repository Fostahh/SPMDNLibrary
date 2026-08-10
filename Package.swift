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
            url: "https://github.com/Fostahh/SPMDNLibrary/releases/download/0.8.0/DNLibrary.zip",
            checksum: "46cccecd370ab523f2bdc8efe02971fc023c8573ed767b7d97229795988791b5"
        )
    ]
)
