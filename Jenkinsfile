pipeline {
   agent any

  tools {
      // Install the Maven version configured as "M3" and add it to the path.
      xcode "Xcode integration"
      // sonarscan
  }

   stages {
      stage('checkout') {
         steps {
            // Get some code from a GitHub repository
            git 'https://github.com/dinhtrang/TestJenkin.git'

            // Run Maven on a Unix agent.
            // sh "mvn -Dmaven.test.failure.ignore=true clean package"

            // To run Maven on a Windows agent, use
            // bat "mvn -Dmaven.test.failure.ignore=true clean package"
         }
         
         

        //  post {
        //     // If Maven was able to run the tests, even if some of the test
        //     // failed, record the test results and archive the jar file.
        //     success {
        //     //   junit '**/target/surefire-reports/TEST-*.xml'
        //     //   archiveArtifacts 'target/*.jar'
        //     }
        //  }
      }
//    stage('Sonarqube') {
//     environment {
//         scannerHome = tool 'sonarscan'
//     }
//     steps {
//         withSonarQubeEnv('Sonar qube') {
//             // sh "${scannerHome}/bin/sonar-scanner"
//             // sh "/Applications/SonarScanner/bin/sonar-scanner"
//             // sh "/Applications/SonarScanner/bin/sonar-scanner/bin/sonar-scanner"
//         	sh "${scannerHome}"
//         }
//         timeout(time: 10, unit: 'MINUTES') {
//             waitForQualityGate abortPipeline: true
//         }
//     }
// }
      stage('Archive_ipa_Release') {
         steps {
            // Get some code from a GitHub repository
            // git 'https://github.com/dinhtrang/TestJenkin.git'

            // Run Maven on a Unix agent.
            // sh "xcodebuild -workspace TestJenkin.xcworkspace -sdk iphoneos -scheme TestJenkin"

            // To run Maven on a Windows agent, use
            // bat "mvn -Dmaven.test.failure.ignore=true clean package"

	        sh "xcodebuild -workspace TestJenkin.xcworkspace -sdk iphoneos -scheme TestJenkin -configuration Release archive -archivePath build/Release-iphoneos/TestJenkin_release.xcarchive"		
	        sh "xcodebuild -exportArchive -archivePath build/Release-iphoneos/TestJenkin_release.xcarchive -exportOptionsPlist ExportOptions.plist -exportPath build/Release-iphoneos"
         } 
      }

      stage('Archive_ipa_Debug') {
         steps {
            // Get some code from a GitHub repository
            // git 'https://github.com/dinhtrang/TestJenkin.git'

            // Run Maven on a Unix agent.
            // sh "xcodebuild -workspace TestJenkin.xcworkspace -sdk iphoneos -scheme TestJenkin"

            // To run Maven on a Windows agent, use
            // bat "mvn -Dmaven.test.failure.ignore=true clean package"

	        sh "xcodebuild -workspace TestJenkin.xcworkspace -sdk iphoneos -scheme TestJenkin -configuration Debug archive -archivePath build/Debug-iphoneos/TestJenkin_dev.xcarchive"		
	        sh "xcodebuild -exportArchive -archivePath build/Debug-iphoneos/TestJenkin_dev.xcarchive -exportOptionsPlist ExportOptions.plist -exportPath build/Debug-iphoneos"
         } 
      }

    stage('Publish') {
      // environment {
      //   APPCENTER_API_TOKEN = credentials('d1467b11fe023272f0a92d3889661ac956ad78b2')
      // }
      steps {
        appCenter apiToken: 'd1467b11fe023272f0a92d3889661ac956ad78b2',
            ownerName: 'tung',
            appName: 'TestJenkin',
            pathToApp: 'Users/tung.dangthanh/.jenkins/workspace/Lending_pipeLine/build/Release-iphoneos/TestJenkin.ipa',
            distributionGroups: 'tester'
      }
  }

      // stage('ipa_dev') {
      //   steps {
      //       sh "xcodebuild -exportArchive -archivePath build/TestJenkin_ipa.xcarchive -exportOptionsPlist ExportOptions.plist -exportPath build/Release-iphoneos"
      //    }
      // }


      // stage('Archive_Test') {
      //   steps {
      //     sh "xcodebuild -workspace TestJenkin.xcworkspace -sdk iphoneos -scheme TestJenkin -configuration Debug archive -archivePath build/TestJenkin_test.xcarchive"
      //   }
      // }

      // stage('ipa_test') {
      //   steps {
      //     sh "xcodebuild -exportArchive -archivePath build/TestJenkin_test.xcarchive -exportOptionsPlist ExportOptions.plist -exportPath build/Debug-iphoneos"
      //   }
      // }
   }
}

//tung
