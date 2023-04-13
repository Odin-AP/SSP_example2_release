// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AP_SSP",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SSP_Common",
            targets: ["SSP_Common"]),
        .library(
            name: "AP_Sample_Admob",
            targets: ["SSP_Admob", "SSP_Common"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
//        .package(url: "https://github.com/Odin-AP/SSP_example2_release.git", from: <#Version#>)
    ],
    targets: [

        .binaryTarget(name: "SSP_Common",
                      path: "BinaryFramework/SSP_Common/xcFrameWork/SSP_Common.xcframework"),

        .target(
            name: "SSP_Admob",
            dependencies: [
                .target(name: "SSP_Common")
            ]
        ),
        
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(
//          name: "AP_SSP/Admob_Sample",
//          dependencies: [
//            // 여기서 조금 헷갈렸는데 name에는 "패키지 안에 어떤 걸 설치할지 적어주면 된다"
//            // 아래 'firebase'를 보면 이해하기 쉬울 듯!
//            // package는 위 주소에서 '.git' 앞에 부분을 적어주면 된다
//            .product(name: "AP_SSP_Sample", package: "SSP_example2_release"),
//          ]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
