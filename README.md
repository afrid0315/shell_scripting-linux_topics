# shell_scripting

1. **sed -n '3,5'p test.sh** --> This command used to print specific lines from a text file. sed- Stream Editor, -n -it allows you to control what gets printed explicitly, '3,5'- from line3 to line5 going to print, p-print, test.sh- shell script file
2. **awk '{print}' test.sh** --> This command used to print whole file.
3. **awk '/Hello/{print}' test.sh** --> prints the full line with 'Hello' word.
4. **awk -F'[.]' '/^Version/{print $1"."$2"."$3"."$4+1}' test.sh** -->Version Increment(script version will be updated automatically in console but not in actual file or script).
5. **sed -i 's/world/India/g' test.sh** --> replace a value in a file(replacing "world" to "India" from test.sh file)
6. **top** - You can use this 'top' command to monitor running processes and their resource usage in real-time.
7. **rpm -qa | grep <git (or) tree (or) installed app to find>**


## Find and Delete Old Files:
### find /path/to/files -type f -mtime +30 -exec rm {} \;
#### This command finds files older than 30 days in the specified path and deletes them.
## ⭐Search for a String Recursively in Files:
### grep -r "search_string" /path/to/search
#### Recursively searches for a specific string in all files within the specified path.
## ⭐Create a Tar Archive and Compress it:
### tar -czvf archive_name.tar.gz /path/to/directory
#### Creates a compressed tar archive of a directory.
## ⭐SSH Tunneling for Remote Access:
### ssh -L local_port:destination_host:destination_port user@remote_host
#### Sets up local port forwarding, allowing you to access a service on a remote machine securely.
## ⭐Awk for Text Processing:
### awk '/pattern/ {print $2}' file.txt
#### Uses Awk to search for a pattern and prints the second field of matching lines in a text file.
## ⭐Monitoring System Resources with Sar:
### sar -u 1 10
#### Utilizes the System Activity Reporter (Sar) to display CPU utilization every second for 10 iterations.
## ⭐Run a Command in the Background and Log Output:
### nohup command > output.log 2>&1 &
#### Executes a command in the background, detaching it from the current session and redirecting output to a log file.
## ⭐Using xargs to Parallelize Commands:
### find /path -type f -print | xargs -n 1 -P 4 command
#### Finds files in a directory and executes a command on each file, running up to 4 commands in parallel.
## ⭐Monitoring Disk Space with df and awk:
### df -h | awk '$5 > 90 {print $1, $5}'
#### Uses df to display disk space information and Awk to filter and print filesystems with usage above 90%.
## ⭐Securely Copy Files Between Hosts with rsync over SSH:
### rsync -avz -e ssh /local/path user@remote:/remote/path
#### Uses rsync to synchronize files between local and remote hosts over SSH, preserving permissions and compression.

