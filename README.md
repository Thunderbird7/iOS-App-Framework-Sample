# iOS Framework With Resource

> The other day I was finding myself wondering why it was so complicated to create a “framework” for iOS which contained Storyboards, graphics, etc.

I found iOS Framework method in Xcode App. Try the following steps to create a workspace that contains a framework project and an app project.

### Framework project:
- Create an iOS Cocoa touch Framework project inside Workspace.
- Add a simple Objective C class MyClass (header .h and implementation file .m), and create a method - (void)greetings.
- Go project Build Phases > Headers > Move MyClass.h from Project to Public.
- Change scheme to framework project and choose iOS simulator, then build. (Choose iOS Device if the app that integrates this framework runs on device. I will continue to use simulator in this example)
- You should have no issue building, the framework build is found in your Derived Data directory which you can find in Organizer.

### App project:
- Create a Swift Single View application inside Workspace.
- Drag above iOS simulator framework build (Found in Debug-iphonesimulator or Release-iphonesimulator) to your project.
- Create a bridging header to expose Objective C class methods to Swift.
- Import MyClass.h in bridging header file.
- Note that if MyClass definition is not found, then add framework Headers path of to Build Settings Header Search Paths.
- Create instance of MyClass in viewDidLoad of ViewController.swift, then call greetings.
- Add framework to Target > Embedded Binaries
- Change scheme to app project and choose iOS simulator, then build.
- You should be able to see greeting messages.

Note that above example demonstrates how to build an app that runs in simulator. If you need to create universal static library that runs on both simulator and devices, then general steps are:

- Build library for simulator
- Build library for device
- Combine them using lipo

There are good references on the web about it, [here](http://www.raywenderlich.com/41377/creating-a-static-library-in-ios-tutorial) for example.
Create universal binary for framework: navigate to framework Derived Data directory then **/Build/Products**, following command should help you create a universal binary in Products directory:

```javascript
lipo -create -output "framework-test-01-universal" "Debug-iphonesimulator/framework-test-01.framework/framework-test-01" "Debug-iphoneos/framework-test-01.framework/framework-test-01" 
``` 

Note that framework-test-01 is my framework project name.
