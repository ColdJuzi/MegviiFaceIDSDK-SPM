// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "MegviiFaceIDSDK",

    platforms: [
        .iOS(.v12)
    ],

    products: [
        .library(
            name: "MegLiveV5Detect",
            targets: ["MegLiveV5Detect"]
        )
    ],

    targets: [

        .binaryTarget(
            name: "MGFaceIDBaseKitBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SwiftPackage/V5.8.16/MGFaceIDBaseKit-5.8.16.zip",
            checksum: "eea0a16a8419975e07a27c3afa302d2298c1d26ad2183df6f93c8c39183cf6eb"
        ),

        .binaryTarget(
            name: "MegLiveV5DetectBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SwiftPackage/V5.8.16/MegLiveV5Detect-5.8.16.zip",
            checksum: "42d31634738c330cedd40f9ae9791d14c0b850b373361991ad1236984640ea5c"
        ),

        .target(
            name: "MGFaceIDBaseKit",
            dependencies: [
                "MGFaceIDBaseKitBinary"
            ],
            path: "Sources/MGFaceIDBaseKit"
        ),

        .target(
            name: "MegLiveV5Detect",
            dependencies: [
                "MegLiveV5DetectBinary",
                "MGFaceIDBaseKit"
            ],
            path: "Sources/MegLiveV5Detect"
        )
    ]
)
