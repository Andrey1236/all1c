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
   stage ('Build')
   {
       echo "Build the code"
   }
   stage ('Unit testing')
   {
       echo "Unit testing"
   }
   stage ('Delyvery')
   {
       echo "Delyvery the code"
   }
}
