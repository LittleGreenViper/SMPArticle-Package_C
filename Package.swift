// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Package_C",
    products: [
        .library(
            name: "Package_C",
            targets: ["Package_C"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Package_C",
            dependencies: [],
            path: "src")
    ]
)
