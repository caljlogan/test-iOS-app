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
	    sh 'export PATH=$PATH:/usr/local/bin'
	    sh 'echo $PATH'
	    sh 'which gem'
	    sh 'sudo bundle install'
	}
    }
    stage('Build Process') {
	dir('test-iOS-app') {
	    sh '/usr/local/bin/fastlane custom_lane'
	}
    }
    stage('Test Application') {
	sh 'pwd'
	sh 'ls'
    }
    stage('Upload to TestFlight') {
	sh 'echo uploading to test_flight'
    }
}
