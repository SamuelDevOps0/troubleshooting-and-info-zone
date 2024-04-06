# This command is used to replace the last occurence of a string in a file
# I looked up this command to make it easier for me to enable the "jenkins" user without having to vi into /etc/passwd

```
sudo tac /etc/passwd | sed '0,/false/{s/false/bash/}' | sudo tac > /tmp/passwd.tmp && sudo mv /tmp/passwd.tmp /etc/passwd
```

*replaces "false" with "bash" on the last line.*

> jenkins:x:987:987:Jenkins Automation Server:/var/lib/jenkins:/bin/bash
