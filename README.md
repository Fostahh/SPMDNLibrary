# SPMDNLibrary

The Swift Package Manager distribution channel for
**[DNLibrary](https://github.com/Fostahh/DNLibrary)** — the Kotlin Multiplatform data layer behind
the Dapur Naura cooking app.

This repository contains **one generated file**. There is no source code here, and none belongs
here.

```swift
.package(url: "https://github.com/Fostahh/SPMDNLibrary.git", from: "1.0.0")
```

## ⚠️ This package does not currently resolve

Verified 2026-08-06:

- **The repository has no tags.** SPM resolves a version requirement by git tag, so *any*
  `from:` / `exact:` requirement fails to resolve — there is nothing to match.
- **There are no GitHub releases**, and the binary target's URL —
  `releases/download/1.4.0/DNLibrary.zip` — returns **404**.

`Package.swift` is left over from before the current release process existed; the `1.4.0` it names
was never published under it. Nothing is broken by this today, because the app has always built
against the local package (`ios/DNLibraryLocal`) and has never pinned a remote version.

**The first `publish-spm.sh publish` fixes it in one step** — it rewrites the manifest with a real
URL and checksum, creates the tag, and creates the release. Until then, treat this repository as
not yet published rather than as broken.

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
