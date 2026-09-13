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
            url: "https://github.com/Fostahh/SPMDNLibrary/releases/download/0.10.1/DNLibrary.zip",
            checksum: "12465e2aa01be67881684b9fbc952bc3ce9e46efaafcdfb141efbd9dd742ab6d"
        )
    ]
)
