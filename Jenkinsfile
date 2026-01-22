pipeline{
	agent any
	    tools{
		jdk 'JDK17'
		gradle 'gradle-8.5'
		}
	stages{
		stage("build"){
			steps{
				echo "building"
				sh 'java --version'
				sh 'gradle --version'
				sh 'gradle clean build'
			}
		 }
	
		stage("test"){
			steps{
				echo "gradle test"
			}
		 }
		stage("lint"){
			steps{
				echo "linting now"
			}
		 }
		stage("Archive"){
			steps{
				echo "Archiving now"
			  archiveArtifacts artifacts: 'build/libs/**/*.jar', fingerprint: true
			}
		 }
		stage("deploy"){
			steps{
				echo "De[loying now"
			}
		 }
	}
}
