pipeline {
    agent any

    stages {
        stage('Source code') {
            steps {
                echo 'Cloning the project'
                git branch: 'main', credentialsId: 'VikGitHub', url: 'https://github.com/nagvikramjit/pilot-repo'
            }
        }
        stage('Check files') {
            steps {
                echo 'Checking files and folders'
                sh 'ls -la'
            }
        }
        stage('Zip app files') {
            steps {
                echo 'zipping necessary files'
                tar cvzf appfiles_${BUILD_NUMBER}.tar.gz "main.py" "requirements.txt" "runapp.sh"
                sh 'ls'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying'
//                 sh 'pip3 install -r requirements.txt'
//                 sh 'python3 main.py'
                
                    sshPublisher(publishers: [sshPublisherDesc(configName: 'ubuntu@18.168.150.18', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'ls -la > newfile.txt', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
                    sshPublisher(publishers: [sshPublisherDesc(configName: 'ubuntu@18.168.150.18', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'tar xvzf appfiles_${BUILD_NUMBER}.tar.gz; sh runapp.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: 'appfiles_${BUILD_NUMBER}.tar.gz')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }
    }
}
