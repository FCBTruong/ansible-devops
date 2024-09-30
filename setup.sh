brew install ansible

# Install the Kubernetes collection
ansible-galaxy collection install community.kubernetes

# Verify that it is installed
ansible-galaxy collection list | grep kubernetes
