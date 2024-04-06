# This command is used to update the jenkins url in our jenkins config file

```
#!/bin/bash

sudo -u jenkins sed -i "/^  <jenkinsUrl>/c\  <jenkinsUrl>$(curl -s ifconfig.me):8080</jenkinsUrl>" /var/lib/jenkins/jenkins.model.JenkinsLocationConfiguration.xml
```
