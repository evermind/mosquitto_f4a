properties properties: [
  disableConcurrentBuilds()
]

pipeline {
	agent { label 'docker' }
	stages {
		stage('Docker') {
			steps {
				dir('') {
					script {
						image = docker.build("docker.evermind.de/flex4apps/mosquitto")
						docker.withRegistry("https://docker.evermind.de","docker.evermind.de-write")  {
							image.push("${env.GIT_BRANCH}")
						}
					}
				}
			}
		}
	}
}
