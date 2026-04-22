 Linux Filesystem Structure

Linux follows a hierarchical directory structure rooted at `/` (called "root"). Everything — files, devices, processes — lives under this single tree.

The Root Directory `/`

All directories branch from `/`. Unlike Windows (which uses drive letters like `C:\`), Linux mounts everything into one unified tree.



 Key Directories

Core System

`/bin` — Essential user binaries (commands like `ls`, `cp`, `mv`, `bash`). Available to all users, even in single-user mode.

`/sbin` — System binaries for administration (`fdisk`, `iptables`, `reboot`). Typically require root privileges.

`/lib` — Shared libraries needed by `/bin` and `/sbin` binaries (similar to `.dll` files on Windows).

`/boot` — Bootloader files, the Linux kernel (`vmlinuz`), and initial RAM disk (`initrd`).

---

User & Application Data

`/home` — Personal directories for each user (e.g. `/home/alice`). Stores user configs, documents, downloads.

`/root` — Home directory specifically for the `root` (superuser) account.

`/usr` — Secondary hierarchy for user programs. Contains:
- `/usr/bin` — Most user commands
- `/usr/lib` — Libraries for `/usr/bin`
- `/usr/local` — Locally installed software (not managed by the package manager)
- `/usr/share` — Architecture-independent data (docs, icons, man pages)

`/opt` — Optional/third-party software packages installed outside the package manager (e.g. proprietary apps).

Variable & Runtime Data

`/var` — Variable data that changes frequently:
- `/var/log` — System and application logs
- `/var/mail` — User mailboxes
- `/var/spool` — Print queues, cron jobs
- `/var/cache` — Cached application data

`/tmp` — Temporary files. Cleared on reboot. World-writable.

`/run` — Runtime data for processes since last boot (PID files, sockets). Replaces `/var/run` on modern systems.
Devices & Virtual Filesystems

`/dev` — Device files representing hardware (e.g. `/dev/sda` for a disk, `/dev/null`, `/dev/tty`). Not real files — interfaces to the kernel.

`/proc` — Virtual filesystem exposing kernel and process info (e.g. `/proc/cpuinfo`, `/proc/meminfo`). Lives entirely in RAM.

`/sys` — Virtual filesystem for kernel/hardware information and configuration (replaces some of `/proc`'s roles).

`/mnt` — Temporary mount point for manually mounted filesystems (USB drives, network shares).

`/media` — Mount points for removable media (auto-mounted USB drives, CDs).



System Configuration

`/etc` — System-wide configuration files (e.g. `/etc/hosts`, `/etc/passwd`, `/etc/fstab`). Text-based, human-readable


/
├── bin/        ← essential commands
├── boot/       ← kernel & bootloader
├── dev/        ← device files
├── etc/        ← system config
├── home/       ← user home dirs
│   └── alice/
├── lib/        ← shared libraries
├── media/      ← removable media
├── mnt/        ← manual mounts
├── opt/        ← optional software
├── proc/       ← kernel/process info (virtual)
├── root/       ← root user's home
├── run/        ← runtime data
├── sbin/       ← admin binaries
├── sys/        ← hardware info (virtual)
├── tmp/        ← temporary files
├── usr/        ← user programs & data
│   ├── bin/
│   ├── lib/
│   ├── local/
│   └── share/
└── var/        ← variable/log data
    ├── log/
    └── cache/
```

---

 Key Principles

1. Everything is a file — devices, sockets, and processes are all represented as files.
2. Single root — no drive letters; everything hangs off `/`.
3. Separation of concerns — config (`/etc`), data (`/var`), binaries (`/usr/bin`), and user files (`/home`) are kept separate.
4. Standards — this layout follows the Filesystem Hierarchy Standard (FHS), making Linux systems predictable across distributions.

cd /
ls -l # give us the full structure of the linux 
man uptime #tells you how long a system has been running
uptime
man free #gives you information on the memory usage
free
man ps 
ps -A #snapchat of all the processes
man df # file system space usage
df -h #sizes of space in readable formats rather than using bytes to know the amount of space used
man fdisk #maniputions of partitons
fdisk -l #to run information about your partitions
sudo fdisk -l # gives you permission to access the partiton information
man lsblk # this lists block devices(lists storage devices along with their partitions sizes and mount points)
lsblk
man top #displays linux processes
sudo apt install htop # downloading htop which is an interactive real time system monitor and process viewer for linux that acts as an enhanced version of the traditional top
htop
