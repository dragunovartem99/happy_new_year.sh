# happy_new_year.sh

![cover_image](https://github.com/user-attachments/assets/158984be-e577-49ec-8d70-362ad82b0bbe)

Minimal bash utility to update copyright years in your git repositories

- [Environment](#environment)
- [Safety Guidelines](#safety-guidelines)
- [Usage Instructions](#usage-instructions)
- Configuration
- Testing
- Project Structure

## Environment

`happy_new_year.sh` was created and tested on the following setup:

- **Shell:** bash 5.2.15
- **OS:** Debian GNU/Linux 12 (bookworm) x86_64

Ensure you have the following installed on your system:

- `bash`
- `git`

## Safety Guidelines

`happy_new_year.sh` is intended to be used **ONLY within git repositories**

This approach keeps you safe:

- restricts its scope to a single repository
- allows to monitor and manage changes using git

## Usage Instructions

1. Read [Safety Guidelines](#safety-guidelines)
2. Place the `happy_new_year.sh` file in the root of your git repository
3. Update the script configuration to your needs
4. run `chmod +x happy_new_year.sh` (to make script executable) 
5. run `./happy_new_year.sh` (to execute script)

After execution, you can review the changes using `git diff`
