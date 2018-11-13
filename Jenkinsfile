node {
    stage('Bundle install / Git Pull') {
	sh 'echo hello world'
	// sh 'rm -r *'
	sh 'pwd'
	sh 'env'
	sh 'ls'
	//sh 'git clone https://github.com/caljlogan/test-iOS-app.git'
	//sh '/usr/local/bin/bundle install'
	sh 'pwd'
	sh 'ls'
	dir('test-iOS-app') {
	    sh 'git pull origin master'    	
	}
	
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
