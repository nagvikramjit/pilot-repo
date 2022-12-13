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
        stage('Deploy') {
            steps {
                echo 'Deploying'
//                 sh 'pip3 install -r requirements.txt'
//                 sh 'python3 main.py'
                
                    sshPublisher(publishers: [sshPublisherDesc(configName: 'ubuntu@13.40.82.116', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'ls -la > newfile.txt', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
                
                }
            }
        }
    }
}
