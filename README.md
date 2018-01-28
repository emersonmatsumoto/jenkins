EC2 crie uma nova instância Amazon Linux 2

Crie um security group com a porta 8080 liberada

Logue na máquina
$ssh -i jenkins.pem ec2-user@34.228.73.40

Entre como root
$sudo su

Baixe o script
$wget https://raw.githubusercontent.com/emersonmatsumoto/jenkins/master/jenkins.sh
$chmod +x jenkins.sh
$./jenkins.sh

