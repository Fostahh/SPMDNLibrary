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
            url: "https://github.com/Fostahh/SPMDNLibrary/releases/download/0.9.0/DNLibrary.zip",
            checksum: "d28eb4f0b6b028f24a21fe18364df1023d59a358cb9b3577932c66b5ffc0cc1f"
        )
    ]
)
