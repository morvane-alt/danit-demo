## 1. Booting OS 
The booting process starts when the computer is turned on.
First, BIOS or UEFI checks the hardware and starts the bootloader 
Then the bootloader loads the Kernel into memory, and the Kernel starts system services and prepares the system for users.


## 2. System Logs
System logs contain information about system events, errors and running services. We can view them in the /var/log directory using commands like ls to see the available log files and cat or less to read them. For example, less /var/log/syslog can be used to check system messages on systems where this file exists.


## 3. File Permissions
The permission -rw-------  means that the owner can read and write the file, but cannot execute it. The group and other users have no permissions. We can change permissions using chmod. "chmod u+x filename" adds execute permission for the owner. Permissions can be set for the owner (u) group (g) and other users (o). We can also use numbers "chmod 700 filename" gives the owner full permissions and removes permissions from everyone else.


## 4. Difference Between apt and dpkg
apt is a tool for installing, updating and removing packages. It can download packages from repositories and install the required dependencies. dpkg works directly with .deb package files but does not automatically download missing dependencies.