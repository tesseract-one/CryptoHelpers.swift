// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UncommonCrypto",
    products: [
        .library(
            name: "UncommonCrypto",
            targets: ["UncommonCrypto"]),
        .library(
            name: "CUncommonCrypto",
            targets: ["CUncommonCrypto"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "UncommonCrypto",
            dependencies: ["CUncommonCrypto"]),
        .target(
            name: "CUncommonCrypto",
            dependencies: []
        ),
        .testTarget(
            name: "UncommonCryptoTests",
            dependencies: ["UncommonCrypto"])
    ]
)
