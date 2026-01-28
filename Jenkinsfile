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
				sh 'gradle test'
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
		 post {
        	success {
        	    emailext(
                subject: "✅ SUCCESS: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: """
                <h2>Build Successful 🎉</h2>
                <p><b>Job:</b> ${env.JOB_NAME}</p>
                <p><b>Build Number:</b> ${env.BUILD_NUMBER}</p>
                <p><b>Build URL:</b> <a href="${env.BUILD_URL}">${env.BUILD_URL}</a></p>
                """,
                to: "samirpanjiyar4@gmail.com",
                mimeType: 'text/html'
            )
        }
	
	
	 failure {
            emailext(
                subject: "❌ FAILED: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: """
                <h2>Build Failed ❌</h2>
                <p><b>Job:</b> ${env.JOB_NAME}</p>
                <p><b>Build Number:</b> ${env.BUILD_NUMBER}</p>
                <p><b>Check logs:</b> <a href="${env.BUILD_URL}">${env.BUILD_URL}</a></p>
                """,
                to: "samirpanjiyar4@gmail.com",
                mimeType: 'text/html'
            )
        }
    }
}
