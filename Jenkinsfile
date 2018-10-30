node {
    stage('Testing stage') {
	sh 'echo hello world'
	sh 'bundle install'
	sh 'pwd'
	sh 'fastlane increment_build_number'
	sh 'fastlane custom_lane'
    }
}
