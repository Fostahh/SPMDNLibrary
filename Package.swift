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
            url: "https://github.com/Fostahh/SPMDNLibrary/releases/download/1.4.0/DNLibrary.zip",
            checksum: "efa48569960a7328e3cac72c70b020a58e063401ab96320ad47a4db462a8f82c"
        )
    ]
)
