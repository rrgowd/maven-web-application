node {
    def mavenHome = tool name: "maven8"
    stage("git url"){
        git credentialsId: 'git-hub-dev', url: 'https://github.com/rrgowd/maven-web-application.git'
    }
    stage("maven build"){
        sh "$mavenHome/bin/mvn clean package"
    }
    
    stage("sonarube"){
        sh "$mavenHome/bin/mvn sonar:sonar"
    }
    
        stage("deploy"){
        sh "$mavenHome/bin/mvn deploy"
    }
    stage("Deploy WAR") {

sshagent(credentials: ['tomcat']) {

    sh '''
        scp target/*.war tomcat@node3:/opt/apache-tomcat-9.0.120/webapps/
    '''
}
}
}
