![Header](https://github.com/k4itrun/hackercam/assets/103044629/453eff3b-5be1-4e20-8c47-99009ed8f891)

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

---

## Table of Contents

1. [Overview](#overview)
   - [Notable Features](#notable-features)
2. [Getting Started](#getting-started)
   - [System Requirements](#system-requirements)
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

### System Requirements

To run this application smoothly, ensure that you have the following prerequisites in place:

- `php` Backend support
- `curl` Network requests
- `wget` Downloads files
- `unzip` Extracts ZIPs
- `~100MB` Disk space (minimum)

> [!NOTE]
> During the initial run, the system will take care of the complete installation of all necessary dependencies without any manual intervention required on your part

### Platform Support

| OS      | Support Level                                              |
| ------- | ---------------------------------------------------------- |
| Windows | Unsupported (Consider using Docker, VirtualBox, or VMware) |
| iPhone  | Alpha (Docker recommended)                                 |
| MacOS   | Alpha (Docker recommended)                                 |
| Linux   | Excellent                                                  |
| Android | Excellent                                                  |

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

### Reporting Issues

If you encounter any bugs or problems while using the tool, please open a [new Issue here](https://github.com/k4itrun/hackercam/issues).
To help us assist you faster, include as much detail as possible, such as:

- What you were trying to do.
- Any error messages or console logs.
- Your environment details (OS, versions, etc.)

The more info you provide, the quicker we can identify and fix the problem.

### Pull Requests

Thanks for wanting to contribute! To submit improvements or fixes, please follow these steps:

1. Clone [this repository](https://github.com/k4itrun/hackercam.git) using `git clone https://github.com/k4itrun/hackercam.git`.
2. Create a new branch from `main` with a clear, descriptive name, for example: `git checkout -b feature/your-feature-name`.
3. Make your changes and commit them with clear, meaningful messages.
4. Open a [new Pull Request here](https://github.com/k4itrun/hackercam/pulls), explaining what you added or fixed and why.

We’ll carefully review each PR and provide feedback if needed to help you get it merged.

☕ **[Thank you for your support!](https://ko-fi.com/A0A11481X5)**

## Contact

If you have any **Questions** or need **Help**, feel free to email me at [tsx@billoneta.xyz](mailto:tsx@billoneta.xyz) or better yet, start a discussion in our **[Github Community](../../discussions)**.

## License

This project is released under the **[MIT License](license.md)**. See LICENSE file for more info.

## Disclaimer

### Important Notice: Educational Use Only.

This tool is designed solely for educational purposes. Any misuse of this tool is strictly prohibited. By using this tool, you acknowledge and accept these terms.

### User Accountability:

By utilizing this tool, you take full responsibility for your actions. The creator disclaims any liability for misuse. It is your responsibility to ensure that your use of this software complies with all applicable laws and regulations.

### No Assistance:

The creator will not provide assistance or support for any misuse of this tool. Any inquiries related to harmful or illegal activities will be ignored.

### Terms Acceptance:

By using this tool, you agree to abide by this disclaimer. If you do not agree with these terms, please do not use the software.

<details>
 <summary>You didn’t break it. It was waiting to break. 🎁</summary>

<a href="https://star-history.com/#k4itrun/hackercam&Timeline">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=k4itrun/hackercam&type=Timeline&theme=dark" />
    <img alt="Star History hackercam" src="https://api.star-history.com/svg?repos=k4itrun/hackercam&type=Timeline" />
  </picture>
</a>

</details>
