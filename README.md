# shell_scripting

1. **sed -n '3,5'p test.sh** --> This command used to print specific lines from a text file. sed- Stream Editor, -n -it allows you to control what gets printed explicitly, '3,5'- from line3 to line5 going to print, p-print, test.sh- shell script file
2. **awk '{print}' test.sh** --> This command used to print whole file.
3. **awk '/Hello/{print}' test.sh** --> prints the full line with 'Hello' word.
4. **awk -F'[.]' '/^Version/{print $1"."$2"."$3"."$4+1}' test.sh** -->Version Increment(script version will be updated automatically in console but not in actual file or script).
5. **sed -i 's/world/India/g' test.sh** --> replace a value in a file(replacing "world" to "India" from test.sh file)
6. **top** - You can use this 'top' command to monitor running processes and their resource usage in real-time.
7. **rpm -qa | grep <git (or) tree (or) installed app to find>**

![image](https://github.com/afrid0315/shell_scripting-linux_topics/assets/126462435/d01bad78-148c-4097-a6fe-b90645ca9ef0)

The diagram below shows the steps.

Step 1 - When we turn on the power, BIOS (Basic Input/Output System) or UEFI (Unified Extensible Firmware Interface) firmware is loaded from non-volatile memory, and executes POST (Power On Self Test).

Step 2 - BIOS/UEFI detects the devices connected to the system, including CPU, RAM, and storage.

Step 3 - Choose a booting device to boot the OS from. This can be the hard drive, the network server, or CD ROM.

Step 4 - BIOS/UEFI runs the boot loader (GRUB), which provides a menu to choose the OS or the kernel functions.

Step 5 - After the kernel is ready, we now switch to the user space. The kernel starts up systemd as the first user-space process, which manages the processes and services, probes all remaining hardware, mounts filesystems, and runs a desktop environment.

Step 6 - systemd activates the default. target unit by default when the system boots. Other analysis units are executed as well.

Step 7 - The system runs a set of startup scripts and configure the environment.

Step 8 - The users are presented with a login window. The system is now ready.
