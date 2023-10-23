<!-- HackerCam -->

<!-- h1 align="center">Hacker Camera</h1 -->

<p align="center">
  <img src=".github/files/hcam.png">
</p>

<p align="center">
  <img src="https://img.shields.io/github/license/k4itrun/HackerCam?style=for-the-badge">
  <img src="https://img.shields.io/badge/Version-1.0-green?style=for-the-badge">
  <img src="https://img.shields.io/github/issues/k4itrun/HackerCam?color=red&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/k4itrun/HackerCam?color=teal&style=for-the-badge">
  <img src="https://img.shields.io/github/issues/k4itrun/HackerCam?color=white&style=for-the-badge">
  <img src="https://img.shields.io/github/stars/k4itrun/HackerCam?color=yellow&style=for-the-badge">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Open%20Source-Yes-darkgreen?style=flat-square">
  <img src="https://img.shields.io/badge/Written%20In-Shell-red?style=flat-square">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-lightblue?style=flat-square">
  <img src="https://img.shields.io/badge/Author-k4itrun-black?style=flat-square">
  <img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fk4itrun%2FHackerCam&title=Visitors&edge_flat=false"/></a>
</p>

### Note

I would like to ask for your collaboration in this project. Adding a star to this repository would be a great help. Simply click the 'Star' button at the top right of the repository page.

Your support means a lot to me and the project in general. Thank you in advance for your help and collaboration! ⭐

### Installation

#### Use Google Shell for testing your (TESTS)

<p align="left">
  <a href="https://shell.cloud.google.com/cloudshell/open?cloudshell_git_repo=https://github.com/k4itrun/HackerCam.git&tutorial=README.md" target="_blank"><img src="https://gstatic.com/cloudssh/images/open-btn.svg"></a>
</p>

#### During the initial run, the system will take care of the complete installation of all necessary dependencies without any manual intervention required on your part

To ensure **HackerCam** runs smoothly, please do the following:

- Just, Clone this repository -
    - ```bash
      $ git clone https://github.com/k4itrun/HackerCam.git
      ```

- Now go to cloned directory and run `hcam.sh` -
    - ```bash
      $ cd HackerCam
      $ bash hcam.sh
      ```

- For Termux
    - ```bash
      $ git clone https://github.com/k4itrun/HackerCam.git && cd HackerCam && termux-setup-storage
      ```
        - ```sql
          $ bash hcam.sh
          ```

- Or, directly run
    ```bash
   $ wget https://raw.githubusercontent.com/k4itrun/HackerCam/v1/hcam.sh && bash hcam.sh
    ```

### Docker
- Download the HackerCam image from Docker Hub
    ```bash
    $ sudo docker pull k4itrun/hackercam
    ```
- Run the interactive HackerCam container and delete it on exit
    ```bash
    $ sudo docker run --rm -it --name hackercam k4itrun/hackercam
    ```
- Copy the image received from the HackerCam container to the imgfiles folder
    ```bash
    $ sudo docker cp hackercam:/hackercam imgfiles
    ``` 

- [Note: Run this command in another terminal to copy the image received from the container to the imgfiles folder while keeping the container open]

### Usage

```bash
Usage: bash hcam.sh [-h] [-t TUNNELER] [-u] [-nu] [-p PORT] [-o OPTION] [-r REGION] [-d DIRECTORY] [-s SUBDOMAIN] 

Options:
  -h, --help                           Show help table and exit
  -t TUNNELER, --tunneler TUNNELER     Name of the tunneler for url shortening (Default: ${TUNNELER})
  (--update | -u),(--no-update | -nu)  Check for the latest HackerCam update (Default: ${UPDATE})
  -p PORT, --port PORT                 Port of HackerCam's Server (Default: ${PORT})
  -o OPTION, --option OPTION           Index of the template
  -r REGION, --region REGION           Region to locate ngrok or loclx
  -d DIRECTORY, --directory DIRECTORY  Folder or Directory where you want the taken images to be saved
  -s SUBDOMAIN, --subdomain SUBDOMAIN  Subdomain for ngrok and loclx [Pro/Premium Account]
```

### Platform Support

| OS        | Support Level        |
|-----------|----------------------|
| Windows   | Unsupported (Consider using Docker, VirtualBox, or VMware) |
| iPhone    | Alpha (Docker recommended) |
| MacOS     | Alpha (Docker recommended) |
| Linux     | Excellent |
| Android   | Excellent |

### Dependencies

#### To run this application smoothly, ensure that you have the following prerequisites in place

<p>click <a href="#during-the-initial-run-the-system-will-take-care-of-the-complete-installation-of-all-necessary-dependencies-without-any-manual-intervention-required-on-your-part">here</a>

- php
- curl
- wget
- unzip

### Note

Termux strongly discourages any hacking-related discussions. Therefore, please refrain from discussing any topics related to **HackerCam** in any of the Termux discussion groups. For more information, refer to the: [wiki](https://wiki.termux.com/wiki/Hacking)

## Notable Features

- **Versatile Templates:** Choose from three distinct templates tailored to your needs.
- **Comprehensive Information:** Uncover essential details including IP address, location, device type, and browser.
- **Dual Tunneling:** Employ simultaneous double tunneling through Cloudflared and Loclx for enhanced security.
- **Customized Image Storage:** Decide where you'd like to store your images with the option to select a custom directory.
- **Effective Error Analysis:** Our built-in error diagnoser streamlines the troubleshooting process.
- **Flexible Configuration:** Enjoy improved flexibility with extensive support for specifying templates, tunneling options, and directory preferences.

If any of the required packages are missing, they will be automatically installed on the first run.

## Tested Environments

- **Termux**
- **Kali Linux**

## Disclaimer

This tool has been developed for educational purposes and serves as a demonstration of phishing techniques. If anyone wishes to attempt unauthorized access to someone's social media accounts, they do so at their own risk. Users bear full responsibility and may be held accountable for any damages or legal violations resulting from the use of this tool. The author disclaims any responsibility for any misuse of **HackerCam**.


<!-- // -->
