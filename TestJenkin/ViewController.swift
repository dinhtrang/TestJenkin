//
//  ViewController.swift
//  TestJenkin
//
//  Created by Tung Dang Thanh on 2/18/20.
//  Copyright © 2020 Tung Dang Thanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// dang thanh tug
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


//xcodebuild -scheme TestJenkin archive -archivePath /Users/tung.dangthanh/Desktop/TestJenkin.xcarchive -exportPath ~/Downloads -exportOptionsPlist ~/Downloads/ExportOptions.plist

//
//xcodebuild -exportArchive -exportFormat ipa -archivePath /Users/tung.dangthanh/Desktop/TestJenkin1.xcarchive -exportPath /Users/tung.dangthanh/Desktop/TestJenkin.ipa -exportProvisioningProfile MerchantApp_develop


//xcodebuild -exportArchive -exportFormat ipa -archivePath /Users/tung.dangthanh/Desktop/TestJenkin.xcarchive -exportPath TestJenkin.ipa -exportProvisioningProfile MerchantApp_develop


//xcodebuild -exportArchive -exportFormat IPA -archivePath MyMobileApp.xcarchive -exportPath MyMobileApp.ipa -exportProvisioningProfile MerchantApp_develop

//
//xcodebuild -exportArchive -archivePath /Users/tung.dangthanh/.jenkins/workspace/Lending_pipeLine/build/Release-iphoneos/TestJenkin.xcarchive -exportPath /Users/tung.dangthanh/.jenkins/workspace/Lending_pipeLine/build/Release-iphoneos -exportOptionsPlist /Users/tung.dangthanh/.jenkins/workspace/LendingDemo/build/Release-iphoneos/developmentV986M848KKExportOptions.plist -allowProvisioningUpdates
//
//
//
//-exportOptionsPlist /Users/tung.dangthanh/.jenkins/workspace/Lending_pipeLine/build/Release-iphoneos/developmentV986M848KKExportOptions.plist -allowProvisioningUpdates
//
//
//
//
//xcodebuild -exportArchive -archivePath /Users/tung.dangthanh/.jenkins/workspace/LendingDemo/build/Release-iphoneos/LendingSDKDemo.xcarchive -exportPath /Users/tung.dangthanh/.jenkins/workspace/LendingDemo/build/Release-iphoneos -exportOptionsPlist /Users/tung.dangthanh/.jenkins/workspace/LendingDemo/build/Release-iphoneos/developmentV986M848KKExportOptions.plist -allowProvisioningUpdates
