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
            url: "https://github.com/KaleyraVideo/iOSDeepFilterNet/releases/download/0.0.30/DeepFilterNet.xcframework.zip",
            checksum: "d66ce628ad734a97bdac7225ab52657a3166fafbd32e5bdb7386009498f183f0"
        ),
    ]
)