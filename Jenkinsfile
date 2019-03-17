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
}
def cmd(command) {
        bat "chcp 65001\n${command}"
    }
