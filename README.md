# iOSDeepFilterNet

This repository provides an iOS implementation of the DeepFilterNet noise suppression model with JNI bindings.

## Overview

DeepFilterNet is a state-of-the-art neural network architecture designed for real-time noise suppression in audio streams. This iOS implementation allows developers to integrate high-quality noise removal capabilities into iOS applications.

## Features

- Real-time noise suppression for iOS applications
- Swift Package Manager integration for seamless native iOS development
- Optimized for mobile performance

## Requirements

- iOS >= 13
- Swift version >= 5.3

## Installation

### Swift Package Manager
You can install this package using Swift Package Manager. Add the following dependency to your Package.swift file:
```swift
swiftdependencies: [
    .package(url: "https://github.com/KaleyraVideo/iOSDeepFilterNet.git", from: "v1")
]
```
Then add the package to your target dependencies:
```swift
swifttargets: [
    .target(
        name: "DeepFilterNet",
        dependencies: ["DeepFilterNet"]
    )
]
```
### Xcode Integration
Alternatively, you can add the package directly in Xcode:

- Open your project in Xcode
- Go to File → Add Package Dependencies
- Enter the repository URL: https://github.com/KaleyraVideo/iOSDeepFilterNet.git
- Select the version you want to use
- Click Add Package

Once installed, import the package in your Swift files:
```swift
import DeepFilterNet
```

## Usage

### Basic Usage

```swift
// Load model
guard let modelURL = Bundle.module.url(forResource: "DeepFilterNet32", withExtension: "gz") else { return }
guard let modelData = try? Data(contentsOf: modelURL) else { return }

let state = modelData.withUnsafeBytes { bufferPointer -> OpaquePointer? in
    guard let baseAddress = bufferPointer.baseAddress else {
        return nil
    }

    return filter.createState(modelBytes: baseAddress.assumingMemoryBound(to: UInt8.self),
                              modelSize: Int32(modelData.count),
                              channels: 1,
                              attenLim: 50.0)
}

guard let state else { return }

// Set the noise attenuation level (dB)
df_set_atten_lim(state, 30)

// Retrieve the audio byte buffer according to your implementation;

[...]
public func removeNoise(from buffer: UnsafeMutablePointer<Int16>) -> Float {
    df_process_frame(state, buffer)
}

// Release resources when done
df_free(state)
```

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Credits

This project is built upon a [fork](https://github.com/KaleyraVideo/DeepFilterNet) of the original [DeepFilterNet](https://github.com/rikorose/DeepFilterNet) work by Hendrik Schröter.<br/>
Further information regarding the optimization process of the DeepFilterNet model for running on a mobile device is available in this [document](https://github.com/KaleyraVideo/DeepFilterNet/blob/main/models/deepfilternet_model_optimization.md).

## Contact

For questions or support, please open an issue on the GitHub repository or contact the Kaleyra Video team at cis-eu.video.engineering@tatacommunications.com.
