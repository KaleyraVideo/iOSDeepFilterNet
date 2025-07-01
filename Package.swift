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
            url: "https://github.com/KaleyraVideo/iOSDeepFilterNet/releases/download/0.0.39/DeepFilterNet.xcframework.zip",
            checksum: "f7977b7cee33f8acdf64e3b497a8d7fd15f4807ee7499649d1f3b70ae45128f5"
        ),
    ]
)