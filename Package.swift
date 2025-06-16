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
            url: "https://github.com/KaleyraVideo/iOSDeepFilterNet/releases/download/0.0.35/DeepFilterNet.xcframework.zip",
            checksum: "b22c79ed936eea5bf4915e02777ae2cc80ccc089ae84304dd6612869376879ca"
        ),
    ]
)