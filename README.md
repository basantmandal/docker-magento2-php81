<div align="center">
  <h1>HK2 Magento PHP 8.1 FPM</h1>
  <b>PHP 8.1 FPM environment optimized for Magento 2</b><br><br>

  <img src="https://img.shields.io/badge/version-3.0-blue?style=flat-square" alt="Version">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white" alt="Docker">
  <img src="https://img.shields.io/badge/license-MIT-green?style=flat-square" alt="License">

  <br>

  <a href="https://www.basantmandal.in/"><img src="https://img.shields.io/badge/Website-000?style=flat-square&logo=ko-fi&logoColor=white" alt="Website"></a>
  <a href="https://www.linkedin.com/in/basantmandal/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
  <a href="https://github.com/basantmandal/docker-magento2-php81"><img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github" alt="GitHub"></a>
  <a href="mailto:support@basantmandal.in"><img src="https://img.shields.io/badge/Email-support%40basantmandal.in-blue?style=flat-square&logo=gmail" alt="Email"></a>
</div>

---

## 📄 Overview

A custom Docker image providing a PHP 8.1 FPM environment optimized specifically for Magento 2 deployments. It includes essential extensions, tools, and configurations for high performance.

### 👥 Who is this for?

- Magento 2 Developers
- DevOps Engineers managing Magento environments
- Anyone needing a pre-configured PHP 8.1 FPM environment

## ✨ Key Features

| Feature | Details |
| :--- | :--- |
| 💻 **PHP 8.1 FPM** | Core PHP environment tailored for modern applications. |
| 📦 **Magento Extensions** | Includes GD, intl, pdo_mysql, bcmath, sockets, and zip. |
| 🧱 **IonCube Loader** | Pre-installed for compatibility with encoded modules. |
| 🚀 **Performance** | Opcache enabled and configured for optimal speed. |

## 📋 System Requirements

| Requirement | Minimum Version |
| :--- | :--- |
| **Docker** | 20.10.x |
| **Docker Compose** | 1.29.x |

> ⚠ **Note:** Ensure sufficient memory allocation (at least 2048M) in your Docker settings for Magento.

## 🚀 Installation

### Using Docker Compose — Recommended

Add the following service to your `docker-compose.yml`:

```yaml
services:
  php:
    image: basantmandal/docker-magento2-php81:latest
    volumes:
      - ./src:/var/www/html
    environment:
      - PHP_MEMORY_LIMIT=2048M
    args:
      - INSTALL_XDEBUG=false  # Set to true to install Xdebug
```

### Manual Installation

**1. Prerequisites**
Ensure Docker is installed and running on your system.

**2. Configuration**
Create a `Dockerfile` extending this image if custom configurations are needed.

**3. Start Services**
Run `docker build -t my-magento-php .` followed by `docker run -d --name magento-php my-magento-php`.

> ⚠ **Security Warning:** Do not expose FPM ports directly to the public internet. Use a reverse proxy like Nginx or Traefik.

## ⚙️ Configuration

| Service | Version | Purpose |
| :--- | :--- | :--- |
| **PHP** | 8.1 | Core runtime environment |
| **Composer** | 2.x | Dependency management |

## 🎯 Demo Pages

*(Not applicable for this Docker image)*

## 🔒 Content Security Policy (CSP)

This image relies on the web server (e.g., Nginx or Apache) to serve appropriate CSP headers. Ensure your web server configuration includes robust CSP directives suitable for Magento.

## 🔐 Privacy & GDPR

This Docker image itself does not collect, store, or transmit any user data. Any privacy or GDPR compliance depends entirely on the application running within it and your infrastructure setup.

## 📚 Documentation

| Document | Purpose |
| :--- | :--- |
| [**Contributing Guide**](.github/CONTRIBUTING.md) | Guidelines for contributing to the project |
| [**Security Policy**](SECURITY.md) | How to report vulnerabilities |

## ⚠️ Known Limitations

- Designed primarily for Linux and macOS environments. Performance on Windows (via WSL2) may vary.
- IonCube loader relies on architecture-specific binaries (aarch64/x86-64).

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guide](.github/CONTRIBUTING.md) for details on how to get started.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENCE.txt) file for details.

## ⚖️ Disclaimer

This software is provided "as is", without warranty of any kind. The authors or copyright holders shall not be liable for any claims, damages, or other liability arising from its use.

<div align="center">
  <b>Basant Mandal</b><br>
  <i>Full Stack Developer</i><br><br>

  <a href="https://www.basantmandal.in/"><img src="https://img.shields.io/badge/Website-000?style=flat-square&logo=ko-fi&logoColor=white" alt="Website"></a>
  <a href="https://www.linkedin.com/in/basantmandal/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
  
  <br>

  ---
  > *Copyright © 2026 Basant Mandal. All rights reserved.*
</div>
