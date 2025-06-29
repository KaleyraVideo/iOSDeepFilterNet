// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DeepFilterNet",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DeepFilterNet",
            targets: ["DeepFilterNet"]),
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(
            name: "DeepFilterNet",
            url: "https://github.com/KaleyraVideo/iOSDeepFilterNet/releases/download/0.0.37/DeepFilterNet.xcframework.zip",
            checksum: "d9d208ec08d56afba9e6b67d1a574f4cccd1214e2d0908017e4ba1acbe653c09"
        ),
    ]
)