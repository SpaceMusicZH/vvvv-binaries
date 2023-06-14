﻿<!--
# 
    <a href="#"><img align="center" src="documentation/readme/silkdotnet_v3_horizontal_96.svg">
    



<div align="center">

[![NuGet Version](https://img.shields.io/nuget/v/Silk.NET)](https://nuget.org/packages/Silk.NET)
[![Preview Feed](https://img.shields.io/badge/nuget-experimental%20feed-yellow)](https://dev.azure.com/UltzOS/Silk.NET/_packaging?_a=feed&feed=Experimental)
[![CI Build](https://github.com/Ultz/Silk.NET/workflows/CI%20Build/badge.svg)](https://github.com/dotnet/Silk.NET/actions/workflows/build.yml)
[![Join our Discord](https://img.shields.io/badge/chat%20on-discord-7289DA)](https://discord.gg/DTHHXRt)



 
-->

![Silk.NET Logo](https://raw.githubusercontent.com/dotnet/Silk.NET/main/documentation/readme/silkdotnet_v3_horizontal_96.svg)


Silk.NET is your one-stop-shop for high-speed .NET multimedia, graphics, and compute; providing bindings to popular low-level APIs such as OpenGL, OpenCL, OpenAL, OpenXR, GLFW, SDL, Vulkan, Assimp, and DirectX.

Use Silk.NET to spruce up applications with cross-platform 3D graphics, audio, compute and haptics!

Silk.NET works on any .NET Standard 2.0 compliant platform, including .NET 5.0, Xamarin, .NET Framework 4.6.1+, and .NET Core 2.0+.






<!--
<a href="https://dotnetfoundation.org" align="right"><img src="https://dotnetfoundation.org/img/logo_v4.svg" alt=".NET Foundation" class="logo-footer" width="72" align="left">
-->

![.NET Foundation](https://raw.githubusercontent.com/dotnet/Silk.NET/main/documentation/readme/dotnetfoundation_v4_horizontal_64.svg)






Proud to be an official project under the benevolent [.NET Foundation](https://dotnetfoundation.org) umbrella.



# About This Package

Core functionality for the Silk.NET library. You likely never need to reference this package yourself, nor is it generally useful without another Silk.NET package.



# Features

### Performance
Having poured lots of hours into examining generated C# code and its JIT assembly, you can count on us to deliver blazing fast bindings with negligible overhead induced by Silk.NET!

### Up-to-date
With an efficient bindings regeneration mechanism, we are committed to ensuring our bindings reflect the latest specifications with monthly updates generated straight from the upstream sources.

### High-level utilities
In addition to providing high-speed, direct, and transparent bindings, we provide high-level utilities and wrappers to maximise productivity in common workloads such as platform-agnostic abstractions around Windowing and Input, bringing your apps to a vast number of platforms without changing a single line!

### Good-to-go
Silk.NET caters for anything you could need in swift development of multimedia, graphics, compute applications. Silk.NET is an all-in-one solution, complete with Graphics, Compute, Audio, Input, and Windowing.

<!--

# The team

We currently have the following maintainers:
- [Dylan Perks](https://github.com/Perksey) [<img src="https://about.twitter.com/etc/designs/about2-twitter/public/img/favicon.ico" alt="Follow Dylan Perks on Twitter" width="16" />](https://twitter.com/intent/follow?screen_name=Dylan_Perks)
- [Kai Jellinghaus](https://github.com/HurricanKai)
- [Thomas Mizrahi](https://github.com/ThomasMiz)

In addition, the Silk.NET working group help drive larger user-facing changes providing key consultation from the perspective of dedicated users and professionals.

# Building from source

Prerequisites
- **Must**: .NET 6 SDK
- **Should**: Android (w/ AOT), iOS, and MAUI .NET 6 workloads (use `dotnet workload install android android-aot ios maui` to install them)
- **Should**: Android SDK version 30 with NDK tools installed
- **Could**: Java JDK (for gradle)
- **Could**: Visual Studio 2019 Community version 16.10 or later

Instructions
- Clone the repository (recursively)
- Run build.sh, build.cmd, build.ps1, or `nuke compile`. By default all packages targeting .NET Core, Standard, or .NET 6 are built. To build our older Xamarin iOS and Android packages, add the `--feature-sets legacy-ios legacy-android` arguments.
- Use the DLLs. To get nupkgs you can use with NuGet instead, use `nuke pack`.

There are more advanced build actions you can do too, such as FullBuild, Pack, FullPack, among others which you can view by doing `nuke --plan`.

The older Xamarin projects will not build properly without being configured to use Desktop MSBuild (i.e. the MSBuild shipped with Visual Studio). As a result, you will ideally need to be on Windows and have Visual Studio 2019 Community (v16.10 or greater) installed with .NET Core and Xamarin workloads. If you don't have this (i.e. because you're on Linux or Mac), you won't be able to build the older Xamarin packages.

# Contributing

Silk.NET uses and encourages [Early Pull Requests](https://medium.com/practical-blend/pull-request-first-f6bb667a9b6). Please don't wait until you're done to open a PR!

1. [Fork Silk.NET](https://github.com/dotnet/Silk.NET/fork)
2. Add an empty commit to a new branch to start your work off: `git commit --allow-empty -m "start of [thing you're working on]"`
3. Once you've pushed a commit, open a [**draft pull request**](https://github.blog/2019-02-14-introducing-draft-pull-requests/). Do this **before** you actually start working.
4. Make your commits in small, incremental steps with clear descriptions.
5. Tag a maintainer when you're done and ask for a review!

-->

# Funding
Silk.NET requires significant effort to maintain, as such we greatly appreciate any financial support you are able to provide!

This helps ensure Silk.NET's long term viability, and to help support the developers who maintain Silk.NET in their free time. [Dylan](https://github.com/sponsors/Perksey) and [Kai](https://github.com/sponsors/HurricanKai) are accepting GitHub Sponsorships.

# Further resources

- Several examples can be found in the [examples folder](https://github.com/dotnet/Silk.NET/tree/master/examples)
- Come chat with us on [Discord](https://discord.gg/DTHHXRt)!

# Licensing and governance

Silk.NET is distributed under the very permissive MIT/X11 license and all dependencies are distributed under MIT-compatible licenses.

Silk.NET is a [.NET Foundation](https://www.dotnetfoundation.org/projects) project, and has adopted the code of conduct defined by the [Contributor Covenant](http://contributor-covenant.org/) to clarify expected behavior in our community. For more information, see the [.NET Foundation Code of Conduct](http://www.dotnetfoundation.org/code-of-conduct).

<!--

---


    <a href="https://www.jetbrains.com/?from=Silk.NET" align="right"><img src="https://raw.githubusercontent.com/dotnet/Silk.NET/main/documentation/readme/jetbrains.svg" alt="JetBrains" class="logo-footer" width="72" align="left">
    


        
Special thanks to [JetBrains](https://www.jetbrains.com/?from=Silk.NET) for supporting us with open-source licenses for their IDEs. 


-->
