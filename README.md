# CloudDeployment
Deployment assets for IONOS and OVH

This repos is here to have all the ressources to automatised the deployment of the following architecture on OVH and IONOS Cloud instances

Ansible = Playbook for Gitlab, Wireguard and Wireguard Configuration
template
wg0.conf.j2 - template config Wireguard
inventory.ini - List of Machines IP address
master_playbook.yml - playbook to run setup_bastion.yml, setup_wireguard.yml, install_gitlab.yml
setup_bastion.yml - Setup Bastion and Linux machine config
setup_wireguard.yml - Setup Wireguard on all Linux machines
install_gitlab.yml - Install & setup of GitLab

Terraform = Terraform template for OHV and IONOS
IONOS.tf
OVH.tf

CI-CD_pipelines = Template pipeline Jenkins and Gitlab CI
Deployment.yml
JenkinsFile
