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
            url: "https://github.com/Fostahh/SPMDNLibrary/releases/download/0.4.0/DNLibrary.zip",
            checksum: "454f99171e58dc0d131a7a2db2742327e59d58680a324d433e6ead94e8e5c53f"
        )
    ]
)
