// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Kontrol",
    products: [
        .library(
            name: "Kontrol",
            targets: ["Kontrol"]),
    ],
    dependencies: [ ],
    targets: [
        .target(
            name: "Kontrol",
            dependencies: [],
            path: "Kontrol")
    ]
)
