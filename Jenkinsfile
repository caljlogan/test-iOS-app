node {
    stage('Bundle install / Git Pull') {
	sh 'echo hello world'
	sh 'bundle install --quiet'
	sh 'pwd'
	
    }
    stage('Build Process') {
	sh 'fastlane custom_lane'
    }
    stage('Test Application') {
	sh 'pwd'
	sh 'ls'
    }
    stage('Upload to TestFlight') {
	sh 'echo uploading to test_flight'
    }
}
