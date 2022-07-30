# ipa-Generator
A Bash Shell Script that transforms a Swift .app to a .ipa that can be sideloaded without an Apple Developer account.

Tutorial: https://www.youtube.com/watch?v=ME4_RHCaCAk

Make sure the SDKSettings.plist CODE_SIGNING_REQUIRED is set to NO

1. Open Xcode Project
2. Choose Generic iOS Device
3. Product -> Archive
4. Right click on the archive -> Show in Finder 
5. Right click on the archive -> Products -> Applications -> Your App
6. Copy the app to your desired folder  
7. Run the Bash Script and enter the path to the file and the result will the .ipa 
