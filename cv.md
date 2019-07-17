# Esteban Torres
## Senior Developer & Speaker

> [estebantorr.es](https://estebantorr.es)
> [github.com/esttorhe](https://github.com/esttorhe)
> [me@estebantorr.es](mailto:me@estebantorr.es)
> +49 162 4190543

------

### Technical Skills

1. `Swift` & `Objective-C`
2. `Go`
3. `Scripting`
4. `Docker`
5. `Xcode` / `AppCode` / `Android Studio`

------

### Work Experience

**`SoundCloud`** *Core Clients Engineer* **2017 to present**
	Reduced compile times by 7 minutes by the creation of a service side `Swift` service with a companion `Ruby` service that tracked build times locally and on `CI`, which helped us track major bottlenecks that guided us towards improving our project organization; resulting in more developers embracing `TDD` due to lesser turnaround times which lead to an increase in the confidence of shipping new features.
	Reduced the number of flaky tests on the `iOS` code base by implementing a `Swift` server side service that scrapes and parses `CI` data from `Buddybuild`, to generate metrics and dashboards that helped us track and fix flaky tests and confirm improvements via metrics; which lead to minimizing friction when adding new features and reducing the integration time by 50% as a result of reducing the need to re-run the `CI` jobs to verify flakyness.
	Improved initial playback time and playqueue load times by 15 seconds by extracting and refactoring `Offline Sync` into it's own framework and removing unnecessary complexity; leading to an increase in total listening time of our users by 10%.
	Wrote multiple tools that hookup to `Prometheus` in order to properly analyze and maintain app health as well as to better understand how all the systems interact with each other.

###  

**`SoundCloud`** *iOS Developer* **2016 to 2017**
	Architected and defined the infrastructure for modules/framework extractions into micro features.
	Integrated the new in-house media player into the `iOS` application; leading to less crashes, faster remote media loading and caching as well less fragmentation of the code via guiding all the media playback through the same engine (audio & video).

###  

**`Brewbot`** *Lead iOS Developer* **2015 to 2016**
	Improved app responsiveness and testability by 20% by introducing reactive programming and `ViewModel` + `DataControllers` resulting in faster iteration times and an increase in the amount of bugs and new features the team could tackle.
	Streamlined the `CI` and «delivery» processes by integrating `fastlane` into the workflow of the organization; guaranteeing increase in confidence with each change by running the tests before every integration and deploying `OTA` updates; resulting in a more stable application and facilitating the addition of changes.

###  

**`Log(n)`** *Mobile Lead Engineer* **2012 to 2015**
	Defined a structure for the `iOS` department by being the mobile lead engineer of a small team of 4 mobile engineers which lead to the company to be able to take more projects and reduce the turnaround time.
	Established a development process for `iOS` projects by documenting and defining a workflow that resulted in a considerable decrease in maintainability times and ability to iterate on new features on the projects.
	Established a CI system for development and delivery by setting up some Mac Minis and Buildasaur with Xcode Bots which resulted in an increment of 15% in test coverage and a reduction of 50% times when deliverying new `ipa`s.

###  

**`Samtec`** *iOS Technical Lead (Technical Lead)* **2010 to 2012**
	Increased iteration times on new features for the iOS apps 4 times by creating, training and directing the `iOS` department.
	Built an `iOS` team of 6 developers by creating a career path program that resulted in the creation of more simultaneous projects, leading to an increase in productivity for the company.

------

### Projects

* **`RxViewModel`**
  [`ReactiveViewModel`][reactiveviewmodel] `Swift` implementation for [`RxSwift`][rxswift]. Created to satisfy a lack of a reactive implementation of `ViewModel` for [`RxSwift`][rxswift], to better understand the innards of `RxSwift` and help ease the usage of `MVVM` with an  [`RxSwift`][rxswift] integration.
  It was later transfered to [RxSwiftCommunity][rxswiftcommunity] to live under the umbrella of the `RxSwiftCommunity`..

* **`SoundCloud` offline sync**
  One of the biggest features of `SoundCloud`'s mobile application  is the ability to offline sync tracks.
  Due to bad performance of the feature in the `iOS` application, I was part of a team in charge of rewriting this implementation in its own abstracted dynamic framework. With the usage of shared repositories and proper mechanisms the offline functionality was abstracted in a way that other `SoundCloud` apps can easily and quickly implement their own offline sync feature.

* **`Multiple OSS Projects`**
  Some of the `OSS` contributions I've worked on are:
  [Added team support to `sigh` (`fastlane`'s tool)][fastlane]</br>
  [Added quality index view for a pods in `CocoaPods`' website][cocoapods]</br>
  [Migrated `Moya` to support `Swift` 2.0][moya]</br>
  [Device agnostic support on `FBSnapshotTestCase` & `Nimble-Snapshot`][fbsnapshot]

------

### Education

**Licenciatura en Sistemas (~Licentiate Degree in Computer Science)** __2003 to 2007__
	Universidad Latina de Costa Rica

**iOS Development Bootcamp** __2012__
	Big Nerd Ranch, Atlanta

[reactiveviewmodel]:https://github.com/reactivecocoa/reactiveviewmodel
[rxswift]:https://github.com/ReactiveX/RxSwift
[rxswiftcommunity]:http://community.rxswift.org/
[fastlane]:https://github.com/fastlane-old/sigh/pull/7
[cocoapods]:http://blog.cocoapods.org/CocoaPods.org-Two-point-Five/
[moya]:https://github.com/Moya/Moya/pull/194
[fbsnapshot]:https://github.com/facebookarchive/ios-snapshot-test-case/pull/121