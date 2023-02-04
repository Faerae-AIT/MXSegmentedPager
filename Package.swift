// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "MXSegmentedPager",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "MXSegmentedPager",
                 targets: ["MXSegmentedPager"])
    ],
    dependencies: [
        .package(url: "https://github.com/Faerae-AIT/MXPagerView", .branch("master")),
        .package(url: "https://github.com/Faerae-AIT/MXSegmentedControl", .branch("master")),
        .package(url: "https://github.com/Faerae-AIT/MXParallaxHeader", .branch("master")),
    ],
    targets: [
        .target(
            name: "MXSegmentedPager",
            dependencies: [
                "MXPagerView",
                "MXSegmentedControl",
                "MXParallaxHeader"
            ], path: "MXSegmentedPager"
        )
    ],
    swiftLanguageVersions: [.v5,.v4_2],
    cLanguageStandard: .c11
)
