// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "MegviiFaceIDV5",
    
    platforms: [
        .iOS(.v12)
    ],
    
    products: [
        .library(
            name: "MegviiFaceIDV5",
            targets: ["MegLiveV5Detect",
                      "MegLiveV5DetectResources"]
        ),
        .library(
            name: "MegviiFaceIDV5Lite",
            targets: ["MegLiveV5DetectLite",
                      "MegLiveV5DetectResources"]
        ),
        .library(
            name: "MegviiFaceIDV5Global",
            targets: ["MegLiveV5DetectGlobal",
                      "MegLiveV5DetectResources"]
        ),
        .library(
            name: "MegviiFaceIDV5GlobalLite",
            targets: ["MegLiveV5DetectGlobalLite",
                      "MegLiveV5DetectResources"]
        )
    ],
    
    targets: [
        .binaryTarget(
            name: "MGFaceIDBaseKitBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MGFaceIDBaseKit.zip",
            checksum: "86cb759d581545891a5ef079fee7b088f9fcaf60b5bd4a9611139d281ba9aabe"
        ),
        .binaryTarget(
            name: "MegLiveV5DetectBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegviiFaceID.zip",
            checksum: "6e90b68bf711061182d1f3f54c8feb63a4fd7d8824cc16ffede6b7b157e61c89"
        ),
        .binaryTarget(
            name: "MegLiveV5DetectLiteBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegviiFaceIDLite.zip",
            checksum: "c4d3b7242b3592e45c03bb3e0e5169ecc02305d2abe1008d75534ba59ad692a5"
        ),
        .binaryTarget(
            name: "MegLiveV5DetectGlobalBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegviiFaceIDGlobal.zip",
            checksum: "c51e164026f7dbcfeafcdc235e514d43f7d4352a883b3c9be2a1aa7b7a45f989"
        ),
        .binaryTarget(
            name: "MegLiveV5DetectGlobalLiteBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegviiFaceIDGlobalLite.zip",
            checksum: "78d350bda1535a0abe1159d7f2b7caf11f81a3c8894d6bd7cae4a2d069fd6226"
        ),
        .target(
            name: "MGFaceIDBaseKit",
            dependencies: [
                "MGFaceIDBaseKitBinary"
            ],
            path: "Sources/MGFaceIDBaseKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
            ]
        ),
        .target(
            name: "MegLiveV5Detect",
            dependencies: [
                "MGFaceIDBaseKit",
                "MegLiveV5DetectBinary"
            ],
            path: "Sources/MegLiveV5Detect",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("WebKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("z")
            ]
        ),
        .target(
            name: "MegLiveV5DetectLite",
            dependencies: [
                "MGFaceIDBaseKit",
                "MegLiveV5DetectLiteBinary"
            ],
            path: "Sources/MegLiveV5DetectLite",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("WebKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("z")
            ]
        ),
        .target(
            name: "MegLiveV5DetectGlobal",
            dependencies: [
                "MGFaceIDBaseKit",
                "MegLiveV5DetectGlobalBinary"
            ],
            path: "Sources/MegLiveV5DetectGlobal",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("WebKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("z")
            ]
        ),
        .target(
            name: "MegLiveV5DetectGlobalLite",
            dependencies: [
                "MGFaceIDBaseKit",
                "MegLiveV5DetectGlobalLiteBinary"
            ],
            path: "Sources/MegLiveV5DetectGlobalLite",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("WebKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("z")
            ]
        ),
        .target(
            name: "MegLiveV5DetectResources",
            resources: [
                .copy("MegLiveV5Detect.bundle")
            ]
        )
    ]
)
