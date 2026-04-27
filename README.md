<div align="center">

  <h1>HK2 Magento PHP 8.1 FPM</h1>
  <b>PHP 8.1 FPM environment optimized for Magento 2.4.8</b><br><br>

  <img src="https://img.shields.io/badge/version-3.0.0-blue?style=flat-square" alt="Version">
  <img src="https://img.shields.io/badge/Magento-2.4.8-EE512B?style=flat-square&logo=magento&logoColor=white" alt="Magento Version">
  <img src="https://img.shields.io/badge/PHP-8.1-777BB4?style=flat-square&logo=php&logoColor=white" alt="PHP Version">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white" alt="Docker">
  <img src="https://img.shields.io/badge/license-MIT-green?style=flat-square" alt="License">
  <br>

  <a href="https://www.basantmandal.in/"><img src="https://img.shields.io/badge/Website-000?style=flat-square&logo=ko-fi&logoColor=white" alt="Website"></a>
  <a href="https://www.linkedin.com/in/basantmandal/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
  <a href="https://github.com/basantmandal/Docker_HK2_Magento_PHP8.1"><img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github" alt="GitHub"></a>
  <img src="https://img.shields.io/badge/Email-support%40basantmandal.in-blue?style=flat-square&logo=gmail" alt="Email">
</div>

---

## 📄 Overview

HK2 Magento PHP 8.1 FPM provides a highly optimized, production-ready PHP 8.1 FPM environment specifically tailored for Magento 2.4.8. It includes essential extensions, tools, and configurations for seamless Magento 2 development and deployment.

### 👥 Who is this for?

- Magento 2 developers seeking a consistent PHP 8.1 local development environment
- DevOps engineers deploying Magento 2.4.8 in containerized environments
- Teams requiring a standardized, optimized PHP-FPM image for CI/CD pipelines

## ✨ Key Features

| Feature | Details |
| :--- | :--- |
| 💻 **PHP 8.1** | Built on `php:8.1-fpm-bookworm` with opcache optimized for performance |
| 📦 **Essential Tools** | Pre-installed with Composer v2, Redis, IonCube Loader, msmtp, and various system dependencies |
| 🧱 **Image Optimization** | Includes tools like `jpegoptim`, `optipng`, `pngquant`, and `gifsicle` for assets optimization |
| ⚙️ **Custom Configuration** | Pre-configured `memory_limit`, `upload_max_filesize`, and timezone settings |

## 📋 System Requirements

| Requirement | Minimum Version |
| :--- | :--- |
| **Docker** | 20.10.x |
| **Magento** | 2.4.8 |

> ⚠ **Note:** Ensure your Docker host has at least 2GB of memory allocated, as the PHP environment specifies a 2048M memory limit.

## 🚀 Installation

### Docker Compose — Recommended

```yaml
services:
  php:
    image: basantmandal/docker_hk2_magento_php8.1:latest
    build: .
    volumes:
      - .:/var/www/html
```

### Manual Installation

**1. Prerequisites**
Ensure Docker is installed and running on your system.

**2. Configuration**
Clone the repository and review the `Dockerfile`.

**3. Start Services**
Run `docker build -t your-image-name .` to build the image manually.

> ⚠ **Security Warning:** Do not expose the PHP-FPM port directly to the internet. Always use a reverse proxy or web server (e.g., Nginx).

## ⚙️ Configuration

| Service | Version | Purpose |
| :--- | :--- | :--- |
| **PHP-FPM** | 8.1 | Processes PHP scripts |
| **Composer** | 2.x | PHP dependency management |
| **IonCube** | Latest | Executes encoded PHP files |

## 🔒 Content Security Policy (CSP)

This image does not configure CSP headers directly; these should be managed via your web server (e.g., Nginx) or Magento 2 application settings.

## 🔐 Privacy & GDPR

This image uses `msmtp` for sending emails, which requires SMTP credentials. Ensure your `msmtp.conf` (if overridden) is securely managed and not committed to version control.

## 📚 Documentation

| Document | Purpose |
| :--- | :--- |
| [**CONTRIBUTING.md**](.github/CONTRIBUTING.md) | Guidelines for contributing to this project |
| [**SECURITY.md**](SECURITY.md) | Security policy and vulnerability reporting |

## ⚠️ Known Limitations

- Designed specifically for Magento 2; may contain unnecessary extensions for other PHP applications.
- Xdebug is disabled by default for performance; must be enabled via `INSTALL_XDEBUG=true` build argument.

## 🤝 Contributing

Contributions are welcome! Please read our [Contributing Guide](.github/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⚖️ Disclaimer

This software is provided "as is", without warranty of any kind. The authors or copyright holders shall not be liable for any claim, damages, or other liability.

<div align="center">
  <b>Basant Mandal</b><br>
  <i>Full Stack Developer</i><br><br>

  <a href="https://www.basantmandal.in/"><img src="https://img.shields.io/badge/Website-000?style=flat-square&logo=ko-fi&logoColor=white" alt="Website"></a>
  <a href="https://www.linkedin.com/in/basantmandal/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
  
  <br>

  ---
  > *Copyright © 2026 Basant Mandal. All rights reserved.*
</div>
