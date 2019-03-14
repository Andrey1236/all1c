pipeline {
    agent {
        label 'bdd'
    }


    stages {
        stage('Hello World') {
            steps {
                echo 'Пртвет World'
            }
        }
        stage('Публикация результатов') {
            steps {
                script {
                    def allurePath = tool name: 'allure', type: 'allure'
                    cmd("${allurePath}/bin/allure generate -o out/allure-report out/allure")
                }
                
                publishHTML target: [
                allowMissing: false, 
                alwaysLinkToLastBuild: false, 
                keepAll: false, 
                reportDir: 'out/allure-report', 
                reportFiles: 'index.html', 
                reportName: 'HTML Report', 
                reportTitles: ''
                ]
                
            }
        }
       
    }
}    
def cmd(command) {
        bat "chcp 65001\n${command}"
    }
