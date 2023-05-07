// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "SnsrWebApi",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "SnsrWebApi", targets: ["SnsrWebApi"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("5.4.4")),
    ],
    targets: [
        .target(name: "SnsrWebApi", dependencies: [
          "Alamofire",
        ], path: "Sources")
    ]
)
