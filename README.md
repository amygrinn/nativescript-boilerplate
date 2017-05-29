# NativeScript Angular Boiler Plate App (Typescript, Lazy Module Loading, Git, Sass, TSLint )

## Features
1. Lazy module loading: split app into modules and load on demand instead of up front (see app/pages/main/main.module.ts)
2. SASS: transpile into CSS (ctrl + shift + B in VSCode)
3. TSLint: Common formatting rules
4. VSCode settings: JS Beautify run on save, TSLint immediately, hide JS files when TS version exists, hide extra files
5. Useful .gitignore (may want to uncomment .vscode after cloning)
6. release script for android

## Set up

1. Install Beautify, Project Snippets, and TSLint extensions for VSCode
2. git clone https://github.com/tylergrinn/nativescript-boilerplate.git [PROJECT_NAME] & cd [PROJECT_NAME]
3. git remote rename origin boilerplate
4. Edit first seven lines of package.json
5. Edit "app_name" and "title_activity_kimera" in app/App_Resources/Android/values/strings.xml and app/App_Resources/Android/values-v21/strings.xml 
6. Edit mainfest -> application -> android:name on line 22 of app/App_Resources/Android/AndroidManifest.xml

## Running

1. npm install -g nativescript
2. tns doctor
3. tns run ios/android

## Build and sign for play store (only works on windows)

1. Add android build tools to your PATH variable (You can download tools only from developer.android.com)
2. If you need a new key: npm run key
3. npm run release
4. Release apk will be in platforms/android/build/outputs/apk
5. Commit and tag with the version number before uploading to the play store
5. Increase "version code" by 1 and edit the "version name" in app/App_Resources/Android/AndroidManifest.xml (lines 4 & 5) for next release
6. Clean the project: npm run clean

## Known issues

If you receive "Error: Duplicate resources", delete node_modules/semver/semver.browser.js.gz & node_modules/semver/semver.min.js.gz and clean: npm run clean

## Stay up to date

git pull boilerplate HEAD

WARNING: may cause conflicts, especially in app/pages/main folder
