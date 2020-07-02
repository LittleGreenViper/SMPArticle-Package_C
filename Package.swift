// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Package_C",
    products: [
        .library(
            name: "Package-C",
            type: .dynamic,
            targets: ["Package_C"])
    ],
    dependencies: [
        .package(name: "Package_A", url: "git@github.com:LittleGreenViper/SPMArticle-Package_A.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "Package_C",
            dependencies: [
                .product(name: "Package-A", package: "Package_A")
            ],
            path: "src"
        ),
        .testTarget(
            name: "Package_CTests",
            dependencies: [
                "Package_C"
            ],
            path: "test"
        )
    ]
)
