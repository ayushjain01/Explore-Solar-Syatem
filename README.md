### Prerequisites

- Xcode 12.0
- Swift 5
- Platform iOS 13+
- Cocoapods-1.10.1
- macOS Catalina Version 10.15.4 or later

### After Download
- Install Cocoapods `pod install`
- Open `ProjectName.xcworkspace`

### App Navigation
Check your app's UI from the AppNavigation screens of your app.


### Libraries

1. Alamofire : For REST API call
https://github.com/Alamofire/Alamofire


### Project Structure
```
├── Exploresolarsystem.xcodeproj  - it lets you create and modify Xcode projects from Ruby.      
│ 
├── Exploresolarsystem            - Application components folder
│ ├── Application       - Application configuration files
│ ├── Assets.xcassets   - Assets of application (ex. images, logo)
│ ├── Constants         - Application constant files
│ │   ├── AppConstants  - Application oriented constants (ex. serverURL)
│ │   ├── StringScheme  - String constants
│ │   ├── ColorConstants - Color constants
│ │   └── FontScheme    - Font Scheme constants
│ ├── Views             - Application's UI View files
│ │   ├── Cell	        - Folder for UI View of cells in Views
│ │   │   └── ViewCell.swift - UIView with mapped model value of cell
│ │   ├── viewModel.swift    - Generated model file for the appropriate view.
│ │   └── view.swift    - Generated swiftui  
│ ├── Services          - REST API services folder
│ │   ├── APIManager.swift  - File with API calling functions
│ │   └── APIService.swift  - API related functions and methods
│ ├── Resources         - Application Resources (ex. fonts, libraries, splash screen)
│ │   └── Fonts         - application's font files
│ ├── Extensions        - iOS Extension Function Files
│ ├── Utilities         - Common classes for application (ex. Utilities)
│ │   └── Utilities.swift - Helper public functions (ex. alert functions)
│ ├── CustomViews       - external component library classes folder
│ ├── Models            - Models for REST APIs
│ ├── Helper            - Helper classes for application (ex. Viewport, ActivityLoader etc.)
│ └── Info.plist        - Permissions and application configuration file
└── Podfile             - Specification that describes the dependencies of the targets of one or more projects
```

### Fonts
We were enable to find following Fonts, Please add manually to ```Resources/Fonts```

```
RalewayRoman-ExtraBold
RalewayRoman-Medium
RalewayItalic-Medium
RalewayRoman-Regular
RalewayRoman-SemiBold```
