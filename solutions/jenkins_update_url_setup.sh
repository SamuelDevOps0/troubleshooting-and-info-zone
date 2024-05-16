#!/bin/bash

echo "#!bin/bash\nsudo -u jenkins sed -i "/^  <jenkinsUrl>/c\  <jenkinsUrl>$(curl -s ifconfig.me):8080</jenkinsUrl>" /var/lib/jenkins/jenkins.model.JenkinsLocationConfiguration.xml" | tee update_url.sh
chmod +x update_jenkins_url.sh
echo "/home/ec2-user/update_url.sh" | sudo tee -a /etc/rc.local >/dev/null
sudo chmod +x /etc/rc.d/rc.local
