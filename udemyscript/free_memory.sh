# Create a script that will create a file with name "devops.txt" and insert the free memory details of your Linux machine in it ?

#!/bin/bash

file_name=devops.txt

touch ${file_name}

echo "Created file ${file_name}"

free -h | tee -a devops.txt



