node {
    stage('Bundle install / Git Pull') {
	sh 'echo hello world'
	sh 'rm -r *'
	sh 'pwd'
	sh 'env'
	sh 'git clone https://github.com/caljlogan/test-iOS-app.git .'
	sh 'ls'
	sh '/usr/local/bin/bundle install'
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
