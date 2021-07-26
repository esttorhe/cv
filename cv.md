# Esteban Torres
## Engineering Manager

> 🌐[estebantorr.es](https://estebantorr.es)<br>🧰[github.com/esttorhe](https://github.com/esttorhe)<br>📩[me@estebantorr.es](mailto:me+cv@estebantorr.es)<br>📱+49 162 4190543

------

### Technical Skills

6. `Agile` Methodologies
5. Cross Platform Team
1. `Swift` & `Objective-C`
2. `Go`
3. `Scripting`
4. `Docker`

------

### Work Experience

**`SoundCloud`** *Core Clients Engineering Manager* **2019 to present**<br>
	Lead the technical front to design, implement and release the very first `Design System` @ SoundCloud. Leading a cross functional team compromised of 14 engineers, coordinating with 2 designers and distributed accross different countries and timezones. Managed to reduce the time it takes to iterate and test UI/UX changes by 30%.<br>
	Manage a cross platform team involving `BackEnd` technologies (`Scala`, `Go`) as well as `Android` & `iOS`. Grew the team to double the number of `BackEnd` engineers & started the inclusion of `Web FrontEnd` development to the team.<br>
	Lead many company wide efforts to improve the `Engineering Experience` across the entire technology organization, e.g.: Centralisation of engineering documentation finding & creation, established a program to share multiplatform work knowledge to other teams, unification of multiple tracking systems to cross-reference on a single place, lead the technical aspect of a redesign project that involved all user facing clients of our app (`web`, `Android` & `iOS`).<br>	
	Focused on leading the career development path of the team, due to the structure of the team more times than none I need to fill the roles of `Product Manager` as well as `Product Owner`.

###  

**`SoundCloud`** *Core Clients Engineer* **2016 to 2019**<br>
	Reduced compile times by 7 minutes by the creation of a service side `Swift` service with a companion `Ruby` service that tracked build times locally and on `CI`, which helped us track major bottlenecks that guided us towards improving our project organization; resulting in more developers embracing `TDD` due to lesser turnaround times which lead to an increase in the confidence of shipping new features.
	Reduced the number of flaky tests on the `iOS` code base by implementing a `Swift` server side service that scrapes and parses `CI` data from `Buddybuild`, to generate metrics and dashboards that helped us track and fix flaky tests and confirm improvements via metrics; which lead to minimizing friction when adding new features and reducing the integration time by 50% as a result of reducing the need to re-run the `CI` jobs to verify flakyness.
	Improved initial playback time and playqueue load times by 15 seconds by extracting and refactoring `Offline Sync` into it's own framework and removing unnecessary complexity; leading to an increase in total listening time of our users by 10%.
	Wrote multiple tools that hookup to `Prometheus` in order to properly analyze and maintain app health as well as to better understand how all the systems interact with each other.<br>
	Architected and defined the infrastructure for modules/framework extractions into micro features.
	Integrated the new in-house media player into the `iOS` application; leading to less crashes, faster remote media loading and caching as well less fragmentation of the code via guiding all the media playback through the same engine (audio & video).

###  

**`Brewbot`** *Lead iOS Developer* **2015 to 2016**<br>
	Improved app responsiveness and testability by 20% by introducing reactive programming and `ViewModel` + `DataControllers` resulting in faster iteration times and an increase in the amount of bugs and new features the team could tackle.
	Streamlined the `CI` and «delivery» processes by integrating `fastlane` into the workflow of the organization; guaranteeing increase in confidence with each change by running the tests before every integration and deploying `OTA` updates; resulting in a more stable application and facilitating the addition of changes.

###  

**`Log(n)`** *Mobile Lead Engineer* **2012 to 2015**<br>
	Defined a structure for the `iOS` department by being the mobile lead engineer of a small team of 4 mobile engineers which lead to the company to be able to take more projects and reduce the turnaround time.
	Established a development process for `iOS` projects by documenting and defining a workflow that resulted in a considerable decrease in maintainability times and ability to iterate on new features on the projects.
	Established a CI system for development and delivery by setting up some Mac Minis and Buildasaur with Xcode Bots which resulted in an increment of 15% in test coverage and a reduction of 50% times when deliverying new `ipa`s.

###  

**`Samtec`** *iOS Technical Lead (Technical Lead)* **2010 to 2012**<br>
	Increased iteration times on new features for the iOS apps 4 times by creating, training and directing the `iOS` department.
	Built an `iOS` team of 6 developers by creating a career path program that resulted in the creation of more simultaneous projects, leading to an increase in productivity for the company.

------

### Projects

* **`SoundCloud` Design System**
  To improve hypothesis testing and faster iteration in `UI`/`UX` efforts; a [`Design System`][design-system] was design, build and put in place to enable `Product Managers` and `Designers` to more easily test changes. Not just that, defining a standard language taxonomy, everyone involved in changes could communicate clearly and without misunderstandings; by sharing the same concepts `Designers`, `Production Managers`, `Engineers` & `Engineering Managers` could communicate intent and needs and be understood exactly. Plus facilitating fixing issues and improving functionality since changes were centralised. 

* **`RxViewModel`**
  [`ReactiveViewModel`][reactiveviewmodel] `Swift` implementation for [`RxSwift`][rxswift]. Created to satisfy a lack of a reactive implementation of `ViewModel` for [`RxSwift`][rxswift], to better understand the innards of `RxSwift` and help ease the usage of `MVVM` with an  [`RxSwift`][rxswift] integration.
  It was later transfered to [RxSwiftCommunity][rxswiftcommunity] to live under the umbrella of the `RxSwiftCommunity`.

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
[design-system]:https://uxdesign.cc/everything-you-need-to-know-about-design-systems-54b109851969