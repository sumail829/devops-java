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
			}
		 }
	
		stage("test"){
			steps{
				echo "testing now"
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
			}
		 }
		stage("deploy"){
			steps{
				echo "De[loying now"
			}
		 }
	}
}
