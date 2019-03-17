def workspace;
node 
{
   stage ('Checkout')
   {
      checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '5d5fbcec-c5d0-415b-9faf-04bae0807f4d', url: 'https://github.com/Andrey1236/all1c.git']]]) 
      workspace =pwd() 
   }
   stage ('Static Code Analysis')
   {
       echo "Static"
   }
    stage('Публикация результатов') 
	{
            steps 
		{
                script 
			{
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
def cmd(command) {
        bat "chcp 65001\n${command}"
    }
