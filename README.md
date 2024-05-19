# shell_scripting

1. **sed -n '3,5'p test.sh** --> This command used to print specific lines from a text file. sed- Stream Editor, -n -it allows you to control what gets printed explicitly, '3,5'- from line3 to line5 going to print, p-print, test.sh- shell script file
2. **awk '{print}' test.sh** --> This command used to print whole file.
3. **awk '/Hello/{print}' test.sh** --> prints the full line with 'Hello' word.
4. **awk -F'[.]' '/^Version/{print $1"."$2"."$3"."$4+1}' test.sh** -->Version Increment(script version will be updated automatically in console but not in actual file or script).
5. **sed -i 's/world/India/g' test.sh** --> replace a value in a file(replacing "world" to "India" from test.sh file)
6. **top** - You can use this 'top' command to monitor running processes and their resource usage in real-time.
7. **rpm -qa | grep <git (or) tree (or) installed app to find>**
8. **uname** -is a command that provides system information. It can display details such as the kernel name, network node hostname, kernel release, kernel version, machine hardware name, processor type, hardware platform, and the operating system.
```
uname -s  # Outputs the kernel name
uname -n  # Outputs the network node hostname
uname -r  # Outputs the kernel release
uname -v  # Outputs the kernel version
uname -m  # Outputs the machine hardware name
uname -p  # Outputs the processor type
uname -i  # Outputs the hardware platform
uname -o  # Outputs the operating system
uname -a  # Outputs all available system information
```
9. **$?** - Exit Status, If we get **$? = 0** then the previous command or task is successful. If **$? = 1 to 128** then the previous command is failed.
10. **id**: Displays comprehensive user identity information, including UID, GID, and group memberships.
11. **id -u**: Displays only the user ID (UID) of the current or specified user.
12. **VALIDATE** we use for repetative script or loops. (same script updating multiple times we can use validate and reduce script size).

## Access Arguments:
**$0** - Script Name
**$1** - First Parameter of the script
**$#** - Total no. of parameters
**$$** - Process id of the script
**$@** - Complete list of arguments.

## Output Redirections:
To redirect we use '>' symbol. Again if we use, it will remove existing logs from log-files and updated new logs.

To redirect but it should delete existing logs in the file then '>>' symbol need to use.
#### STDOUT --> success =1 (default)
#### STDERR --> failed  =2
**Eg:** 
- ls -ltr > log-file (Only success logs will be redirected to log-file, if logs is failed then that will not be saved here)
- ls -ltrs 2> log-file (if we want failed logs. That will be redirected to log-file by using 2, if logs is success that can't be redirected here).
- ls -ltr &> log-file (if we want both success and failed logs. That will be redirected to log-file by using &).

## Colors in Shell Scripting:
Blue-30;
Red -31;
Green -32;
Yellow -33;
Normal -0

Eg: Take this as variable RED="\e[31m" as per required color and use.
    
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

