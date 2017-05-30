# NativeScript Angular Boiler Plate App (Typescript, Lazy Module Loading, Git, Sass, TSLint )

## Features
1. Lazy module loading: split app into modules and load on demand instead of up front (see app/pages/main/main.module.ts)
2. SASS: transpile into CSS (ctrl + shift + B in VSCode)
3. TSLint: Common formatting rules
4. VSCode settings: JS Beautify run on save, TSLint immediately, hide JS files when TS version exists, hide extra files
5. Useful .gitignore (may want to uncomment .vscode after cloning)
6. release script for android

## Set up

1. Install [Visual Studio Code](https://code.visualstudio.com/), [git](https://git-scm.com/downloads), and [node](https://nodejs.org/en/download/)
2. Open VS Code and click the extensions button (bottom icon on the sidebar)
3. Install Beautify, Project Snippets, and TSLint extensions for VSCode
4. press ctrl + \` (backtick) to open command line
5. `git clone https://github.com/tylergrinn/nativescript-boilerplate.git [PROJECT_NAME] & cd [PROJECT_NAME]`
6. `git remote rename origin boilerplate`
7. Edit first seven lines of package.json. Make the 'id' of the app in the form of com.organization_name.app_name
8. Edit "app_name" and "title_activity_kimera" in app/App_Resources/Android/values/strings.xml and app/App_Resources/Android/values-v21/strings.xml 
9. Edit mainfest -> application -> android:name on line 22 of app/App_Resources/Android/AndroidManifest.xml
10. `npm install -g nativescript`
11. `@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://www.nativescript.org/setup/win'))"`
12. `tns doctor`

## Running

`tns run ios/android`

## Build and sign for play store (only works on windows)

1. If you need a new key: `npm run key`
2. `npm run release`
3. Release apk will be in platforms/android/build/outputs/apk
4. Commit and tag with the version number before uploading to the play store
5. Increase "version code" by 1 and edit the "version name" in app/App_Resources/Android/AndroidManifest.xml (lines 4 & 5) for next release
6. Clean the project: `npm run clean`

## Known issues

If you receive "Error: Duplicate resources", delete node_modules/semver/semver.browser.js.gz & node_modules/semver/semver.min.js.gz and clean: npm run clean

## Stay up to date

`git pull boilerplate HEAD`

WARNING: may cause conflicts, especially in app/pages/main folder
