pipeline {
    agent {
        label 'kubeagent'
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }

        stages {
            stage('Run Ansible Playbook') {
                steps {
                    script {
                        container('ansible') {
                            // Run your playbook
                            sh 'ansible-playbook -i inventory.ini playbooks/deploy-nginx.yml'
                        }
                    }
                }
            }
        }
    }
}