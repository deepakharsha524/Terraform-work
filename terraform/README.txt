
############## Set up kubectl ######################
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin

################Download the aws-iam-authenticator#################
wget https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v0.3.0/heptio-authenticator-aws_0.3.0_linux_amd64
chmod +x heptio-authenticator-aws_0.3.0_linux_amd64
sudo mv heptio-authenticator-aws_0.3.0_linux_amd64 /usr/local/bin/heptio-authenticator-aws



####### steps ########################

1 cd eks

2 Update keys and region in providers.tf

3 terraform init
terraform plan

5 terraform apply

###############Configure kubectl ################
terraform output kubeconfig # save output in ~/.kube/config
aws eks --region <region> update-kubeconfig --name terraform-eks-demo

#############Configure config-map-auth-aws #########################
terraform output config-map-aws-auth # save output in config-map-aws-auth.yaml
kubectl apply -f config-map-aws-auth.yaml
##########################################
kubectl get nodes




##############ECR#######################

docker tag mobiwiki_ha-mobiwiki:latest <>:latest
aws ecr get -login



