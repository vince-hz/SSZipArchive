// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SSZipArchive",
    products: [
        .library(
            name: "SSZipArchive",
            targets: ["SSZipArchive"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SSZipArchive",
            path: "SSZipArchive",
            sources: [
                "minizip/ioapi.c",
                "minizip/mztools.c",
                "minizip/unzip.c",
                "minizip/zip.c",
                "SSZipArchive.m"
            ],
            cSettings: [.headerSearchPath(".")])
    ]
)
