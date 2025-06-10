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
            url: "https://github.com/KaleyraVideo/iOSDeepFilterNet/releases/download/v0.0.0/DeepFilterNet.xcframework.zip",
            checksum: "0000"
        ),
    ]
)