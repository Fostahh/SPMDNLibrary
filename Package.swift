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
            url: "https://github.com/Fostahh/SPMDNLibrary/releases/download/1.2.0/DNLibrary.zip",
            checksum: "fc1276fd2bec0144e4a505a824c7f6fc6050991d4a5074a2fcf3ed51d63a5d4f"
        )
    ]
)
