# SPMDNLibrary

The Swift Package Manager distribution channel for
**[DNLibrary](https://github.com/Fostahh/DNLibrary)** — the Kotlin Multiplatform data layer behind
the Dapur Naura cooking app.

This repository contains **one generated file**. There is no source code here, and none belongs
here.

```swift
.package(url: "https://github.com/Fostahh/SPMDNLibrary.git", .upToNextMajor(from: "0.1.0"))
```

## This package resolves

Every published version is a git tag with a matching GitHub release, and the binary target in
`Package.swift` points at that release's `DNLibrary.zip` with its generated checksum.

**The app pins by range rather than exactly** (DN-030): `upToNextMajor` from a floor, which SPM
reads as `>= floor, < 1.0.0`. A release therefore needs no edit to the app's project file — *Update
to Latest Package Versions* is the whole repin — and `1.0.0` is reserved for the App Store release,
a bound the resolver enforces rather than one to remember.

**The floor in the snippet above is `0.1.0` on purpose — the first release, chosen so it can
never be mistaken for a current number.** DN-053's fix to this same snippet used `0.10.1`, the
version current at the time, and it read as current for exactly one release before aging like any
other hard-coded number (DN-029). A floor that is visibly the oldest possible one cannot repeat that.

**No current version is written anywhere in this file.** The floor a real consumer needs is the
first version carrying the API it calls, which for `ios/DapurNaura` is read from
`project.pbxproj`, not from here. The tag list on this repository is derived and always correct;
read it there.

> **Source of truth.** For *what was asked for*, the umbrella repo's `docs/requirements/` wins — over the code, over any other
> document, over a commit message. Where no requirement exists, **the ticket is the source of truth**
> and its `## Rationale` carries the why.
>
> This governs **intent**, not facts. For *what the code does today*, believe the code. When intent
> and implementation disagree, the implementation is what is wrong: record the correction in the
> **ticket**, never by editing the requirement.

## ⚠️ Do not edit `Package.swift` by hand

It is rewritten from end to end by `DNLibrary/scripts/publish-spm.sh` on every release — the binary
target's URL and its checksum are generated from the built XCFramework. **A hand edit is lost at the
next publish**, and a hand-written checksum that does not match the artifact fails resolution for
everyone with an error that does not say why.

To change what this package offers, change DNLibrary and publish again.

## Why this is a separate repository

Swift Package Manager resolves a git-URL dependency by cloning the repository and reading
`Package.swift` **at the repository root** — there is no subdirectory support. It also needs its own
tag namespace, because the package version *is* the git tag. Neither is possible if this lives
inside DNLibrary or the app.

## Releasing

Not done here. From `DNLibrary`:

```sh
scripts/publish-spm.sh          # choose: publish
```

That builds the release XCFramework, zips it, computes the checksum, rewrites the manifest in this
repository, tags, pushes, and creates the GitHub release the binary target points at.

**Human-triggered only, and only after the corresponding pull request is merged.** Versioning is
plain semver on the tag, independent of the app's version.

## Requirements

Consumers need Swift tools 5.10 and iOS 15+. The app that uses it targets iOS 17.
