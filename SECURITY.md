## Supported Versions

| Version | Status | Support Level |
| :--- | :--- | :--- |
| 3.x | ✅ Supported | Latest stable |
| 2.x | ❌ Unsupported | EOL |

## Reporting a Vulnerability

Please report any security vulnerabilities privately via email to `support@basantmandal.in` and `security@basantmandal.in`. Do not open a public issue. Include the following details in your report:
- Description of the vulnerability
- Steps to reproduce
- Potential impact
- Any suggested fixes

We will respond to your report within 48 hours.

## What to Expect

1. We will acknowledge receipt of your vulnerability report.
2. We will investigate the issue and determine its validity and impact.
3. If valid, we will develop and test a patch.
4. We will release the patch and announce it in our release notes.
5. All reports will be kept strictly confidential until a fix is released.

## Scope

**In Scope:**
- Vulnerabilities within the `Dockerfile` or related scripts provided in this repository.
- Configurations that expose services unintentionally.

**Out of Scope:**
- Vulnerabilities in third-party software (e.g., PHP, Magento, Nginx) unless specifically caused by our configuration.
- Issues related to user environment setup or network configurations outside the provided Docker images.

## Security Best Practices for Users

- **Environment Setup:** Keep sensitive data (e.g., database passwords, email credentials) in `.env` files and never commit them to version control.
- **Network Security:** Use firewalls (e.g., UFW) to restrict access. Do not expose the PHP-FPM port directly to the internet; use a reverse proxy.
- **Updates:** Regularly pull the latest version of the image and update your containers.

## Contact Information

| Purpose | Contact |
| :--- | :--- |
| Security Reports | support@basantmandal.in |
| General Support | support@basantmandal.in |

## Acknowledgment

Thank you to all security researchers and contributors who help keep our project secure.

<div align="center">
  <b>Basant Mandal</b><br>
  <i>Full Stack Developer</i><br><br>

  <a href="https://www.basantmandal.in/"><img src="https://img.shields.io/badge/Website-000?style=flat-square&logo=ko-fi&logoColor=white" alt="Website"></a>
  <a href="https://www.linkedin.com/in/basantmandal/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
  
  <br>

  ---
  > *Copyright © 2026 Basant Mandal. All rights reserved.*
</div>
