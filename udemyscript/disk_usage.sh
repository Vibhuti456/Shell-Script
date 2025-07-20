# Create a script that will create a file with name "disk.txt" and insert the disk utilization details of your Linux machine in that file ?

#!/bin/bash

file=disk.txt

touch ${file}

echo "file ${file} created" 

du -sh | tee -a disk.txt
