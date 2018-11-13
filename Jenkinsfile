node {
    stage('Bundle install / Git Pull') {
	sh 'echo hello world'
	sh 'rm -rf test-iOS-app'
	sh 'pwd'
	sh 'ls'
	sh 'git clone https://github.com/caljlogan/test-iOS-app.git'
	sh 'cd test-iOS-app'
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
