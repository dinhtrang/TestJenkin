pipeline {
   agent any

//   tools {
//       // Install the Maven version configured as "M3" and add it to the path.
//       maven "M3"
//   }

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
