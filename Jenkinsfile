node {
    stage('Bundle install / Git Pull') {
	sh 'echo hello world'
	sh 'git clone https://github.com/caljlogan/test-iOS-app.git'
	sh 'bundle install --quiet'
	sh 'pwd'
	sh 'ls'
	
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
