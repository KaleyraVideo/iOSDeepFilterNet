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
            url: "https://github.com/KaleyraVideo/iOSDeepFilterNet/releases/download/0.0.36/DeepFilterNet.xcframework.zip",
            checksum: "5f92e941c624731c82caa652f167f2e3bf0cc29dae79c5d34c86a53b0bc7504e"
        ),
    ]
)