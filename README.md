# CordovaMapSwift
Uses a Cordova plugin to add a mapkit on a webview using swift

# Installation
1. use command "cordova plugin add https://github.com/Ripnrip/CordovaMapSwift"
2. add swift dependency with command "cordova plugin add cordova-plugin-add-swift-support --save"
3. add ios as a platform to your app with command  "cordova platform add ios"
4. (not yet working) edit the 'onDeviceReady' in your app's  <www/js/index.js> file to the run showMap method. (The echo method works)

# TODO
1. get the mapview to be added to the webview. The code compiles and seems intuitive enough, but I think it could be something with either adding MapKit/UIKit manually in the CordovaMapSwift.swift (I also added it to them to the plugin.xml file) , or the fact that I created a mapview as a constant outside the method declarations

# Refrences
1. https://cordova.apache.org/docs/en/latest/guide/hybrid/plugins/index.html
2. https://moduscreate.com/writing-a-cordova-plugin-in-swift-3-for-ios/ 

![Alt text](/1.png?raw=true "Image")


