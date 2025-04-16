<div align="center">
  <picture>
    <img 
      src=".github/IMG/hackercam.png" 
      height="150"
      loading="lazy"
      style="margin-bottom: 15px;"
      alt="HackerCam logo"
    />
  </picture>
  
<h1>
  <a href="https://github.com/k4itrun/hackercam" target="_blank" rel="noopener noreferrer">
    HackerCam.
  </a>
</h1>
</div>

<p align="center">
  Demonstrates how a simple link can expose the camera, IP, and location in real time, highlighting the importance of digital security.
</p>

<div align="center">
<a aria-label="GitHub Maintained" href="https://github.com/k4itrun/hackercam/blob/master/license.md">
    <img src="https://img.shields.io/badge/No-%5dd348f0?logo=github&style=flat-square&label=Maintained%3F">
  </a>
  <a aria-label="License" href="https://github.com/k4itrun/hackercam/blob/master/license.md">
    <img src="https://img.shields.io/github/license/k4itrun/hackercam?color=%5dd348f0&logo=github&style=flat-square&label=License">
  </a>
  <a aria-label="Version" href="https://github.com/k4itrun/hackercam/releases">
    <img src="https://img.shields.io/github/v/release/k4itrun/hackercam?color=%5dd348f0&logo=github&style=flat-square&label=Version">
  </a>
  <a aria-label="Discord" href="https://discord.gg/A6Vu7gYE">
    <img src="https://img.shields.io/discord/903684797560397915?color=%5dd348f0&logo=discord&style=flat-square&logoColor=fff&label=Discord">
  </a>
</div>

<div align="center">
  <a aria-label="Stars" href="https://github.com/k4itrun/hackercam">
    <img src="https://img.shields.io/github/stars/k4itrun/hackercam?color=%5dd348f0&logo=github&style=flat-square&label=Stars">
  </a>
  <a aria-label="Forks" href="https://github.com/k4itrun/hackercam/releases">
    <img src="https://img.shields.io/github/forks/k4itrun/hackercam?color=%5dd348f0&logo=github&style=flat-square&label=Forks">
  </a>
  <a aria-label="Issues" href="https://github.com/k4itrun/hackercam/issues">
    <img src="https://img.shields.io/github/issues/k4itrun/hackercam?color=%5dd348f0&logo=github&style=flat-square&label=Issues">
  </a>
</div>

## Table of Contents

1. [Overview](#overview)
   - [Notable Features](#notable-features)
2. [Getting Started](#getting-started)
   - [Requirements](#requirements)
   - [Platform Support](#platform-support)
   - [Installation](#installation)
3. [Usage](#usage)
4. [Contributing](#contributing)
5. [Contact](#contact)
6. [License](#license)
7. [Disclaimer](#disclaimer)


## Overview

This project demonstrates how a simple link can be used to expose sensitive information such as the user's camera, IP address, and real-time location. It serves as a powerful reminder of the importance of digital security and user awareness when interacting with unknown or suspicious links online.

### Notable Features

- **Versatile Templates:** Choose from three distinct templates tailored to your needs.
- **Comprehensive Information:** Uncover essential details including IP address, location, device type, and browser.
- **Dual Tunneling:** Employ simultaneous double tunneling through Cloudflared and Loclx for enhanced security.
- **Customized Image Storage:** Decide where you'd like to store your images with the option to select a custom directory.
- **Effective Error Analysis:** Our built-in error diagnoser streamlines the troubleshooting process.
- **Flexible Configuration:** Enjoy improved flexibility with extensive support for specifying templates, tunneling options, and directory preferences.

## Getting Started

### Requirements

To run this application smoothly, ensure that you have the following prerequisites in place:
- php
- curl
- wget
- unzip

> [!NOTE]
> During the initial run, the system will take care of the complete installation of all necessary dependencies without any manual intervention required on your part

### Platform Support

| OS        | Support Level        |
|-----------|----------------------|
| Windows   | Unsupported (Consider using Docker, VirtualBox, or VMware) |
| iPhone    | Alpha (Docker recommended) |
| MacOS     | Alpha (Docker recommended) |
| Linux     | Excellent |
| Android   | Excellent |

### Installation

#### Use Google Shell to test this online tool

<p align="left">
  <a href="https://shell.cloud.google.com/cloudshell/open?cloudshell_git_repo=https://github.com/k4itrun/hackercam.git&tutorial=README.md" target="_blank"><img src="https://gstatic.com/cloudssh/images/open-btn.svg"></a>
</p>

To ensure **hackercam** runs smoothly, please do the following:

```bash
git clone https://github.com/k4itrun/hackercam.git
```
```bash
cd hackercam
```
```bash
bash camera.sh
```

- For Termux
```bash
git clone https://github.com/k4itrun/hackercam.git && cd hackercam && termux-setup-storage
```
```bash
bash camera.sh
```

> [!NOTE]
> Termux strongly discourages any hacking-related discussions. Therefore, please refrain from discussing any topics related to **hackercam** in any of the Termux discussion groups. For more information, refer to the: [wiki](https://wiki.termux.com/wiki/hacking)

- Or, directly run
```bash
wget https://raw.githubusercontent.com/k4itrun/hackercam/v1/camera.sh && bash camera.sh
```

### Docker
```bash
sudo docker pull k4itrun/hackercam
```
```bash
sudo docker run --rm -it --name hackercam k4itrun/hackercam
```
```bash
sudo docker cp hackercam:/hackercam imgfiles
``` 

> [!NOTE]
> Run this command in another terminal to copy the image received from the container to the imgfiles folder while keeping the container open

## Usage

```yml
Usage: bash camera.sh [-h] [-t TUNNELER] [-u] [-nu] [-p PORT] [-o OPTION] [-r REGION] [-d DIRECTORY] [-s SUBDOMAIN] 

Options:
  -h, --help                           Show help table and exit
  -t TUNNELER, --tunneler TUNNELER     Name of the tunneler for url shortening (Default: ${TUNNELER})
  (--update | -u),(--no-update | -nu)  Check for the latest hackercam update (Default: ${UPDATE})
  -p PORT, --port PORT                 Port of hackercam's Server (Default: ${PORT})
  -o OPTION, --option OPTION           Index of the template
  -r REGION, --region REGION           Region to locate ngrok or loclx
  -d DIRECTORY, --directory DIRECTORY  Folder or Directory where you want the taken images to be saved
  -s SUBDOMAIN, --subdomain SUBDOMAIN  Subdomain for ngrok and loclx [Pro/Premium Account]
```

## Contributing

We greatly appreciate any contributions to this project! Whether you want to open new issues, submit pull requests, or share suggestions for improvements, your input is invaluable. We encourage you to refer to our [Contributing Guidelines](CONTRIBUTING.md) to facilitate a seamless collaboration process.

You can also support the development of this software through a donation, helping me bring new optimal and improved projects to life.

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/A0A11481X5)

Thank you for your interest and support! ✌️

## License

This project uses the MIT license. You can find the full license details in the [LICENSE](license.md) file.

## Contact

For any inquiries or support, you can reach out via [contact@w1sh.xyz](mailto:contact@w1sh.xyz) or join our [Discord Server](https://discord.gg/A6Vu7gYE).

## Disclaimer

### Important Notice: Educational Use Only.

This tool has been developed for educational purposes and serves as a demonstration of phishing techniques. If anyone hackercames to attempt unauthorized access to someone's social media accounts, they do so at their own risk. Users bear full responsibility and may be held accountable for any damages or legal violations resulting from the use of this tool. The author disclaims any responsibility for any misuse of **hackercam**.

### User Accountability:
By utilizing this tool, you take full responsibility for your actions. The creator disclaims any liability for misuse. It is your responsibility to ensure that your use of this software complies with all applicable laws and regulations.

### No Assistance:
The creator will not provide assistance or support for any misuse of this tool. Any inquiries related to harmful or illegal activities will be ignored.

### Terms Acceptance:
By using this tool, you agree to abide by this disclaimer. If you do not agree with these terms, please do not use the software.
