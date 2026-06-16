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
                checksum: "c4c53e7146871db17130482de676d329089f7edf5231dc082cd3354a09e3127f"
            ),
        
            .binaryTarget(
                name: "MegLiveV5DetectLiteBinary",
                url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegviiFaceIDLite.zip",
                checksum: "f464c88fce04ecc6e175dd4c90a4c60ecdda5129779a74ce8700860e3dd0d5d4"
            ),
        
            .binaryTarget(
                name: "MegLiveV5DetectGlobalBinary",
                url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegviiFaceIDGlobal.zip",
                checksum: "4d9009bac985fb97dc1fefe38a27d1636e1b9c5055bee2426669a17a1c3a9443"
            ),
        
            .binaryTarget(
                name: "MegLiveV5DetectGlobalLiteBinary",
                url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegviiFaceIDGlobalLite.zip",
                checksum: "5901576e5baeba3b9c0d3098b3d3c8972ab4a2f1c3c4397396dc0d5db9b4e0e0"
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
                    "MGFaceIDBaseKit",
                    "MegLiveV5DetectBinary"
                ],
                path: "Sources/MegLiveV5Detect"
            ),
        
            .target(
                name: "MegLiveV5DetectLite",
                dependencies: [
                    "MGFaceIDBaseKit",
                    "MegLiveV5DetectLiteBinary"
                ],
                path: "Sources/MegLiveV5Detect"
            ),
        
            .target(
                name: "MegLiveV5DetectGlobal",
                dependencies: [
                    "MGFaceIDBaseKit",
                    "MegLiveV5DetectGlobalBinary"
                ],
                path: "Sources/MegLiveV5Detect"
            ),
        
            .target(
                name: "MegLiveV5DetectGlobalLite",
                dependencies: [
                    "MGFaceIDBaseKit",
                    "MegLiveV5DetectGlobalLiteBinary"
                ],
                path: "Sources/MegLiveV5Detect"
            )
        
            .target(
                name: "MegLiveV5DetectResources",
                resources: [
                    .copy("MegLiveV5Detect.bundle")
                ]
            )
    ]
)
