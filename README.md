# [PDF Page Numbers API](https://apiverve.com/marketplace/pdfpagenumbers?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

PDF Page Numbers stamps a page number on every page of a PDF, uploaded or fetched from a URL, and returns a download link to the numbered file. Choose the corner or edge and the font size. Paid plans can also set a label format such as Page 3 of 12, the starting number, and skip a cover page.

The PDF Page Numbers API provides a simple, reliable way to integrate pdf page numbers functionality into your applications. Built for developers who need production-ready pdf page numbers capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/pdfpagenumbers?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/pdfpagenumbers?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-POST-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/pdfpagenumbers)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.PDFPageNumbers)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-pdfpagenumbers/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_pdfpagenumbers)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/pdfpagenumbers)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_pdfpagenumbers)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callPDFPageNumbersAPI() {
    try {
        const requestBody = {
    "format": "Page {page} of {total}",
    "pdf": "https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf"
};

        const response = await fetch('https://api.apiverve.com/v1/pdfpagenumbers', {
            method: 'POST',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(requestBody)
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callPDFPageNumbersAPI();
```

### Using cURL

```bash
curl -X POST "https://api.apiverve.com/v1/pdfpagenumbers" \
  -H "x-api-key: YOUR_API_KEY_HERE" \
  -F "pdf=@/path/to/your-file"
# Accepted formats: .pdf (max 10MB)
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/pdfpagenumbers
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/pdfpagenumbers) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.PDFPageNumbers
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.PDFPageNumbers) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-pdfpagenumbers
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-pdfpagenumbers/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_pdfpagenumbers
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_pdfpagenumbers) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/pdfpagenumbers
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/pdfpagenumbers) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_pdfpagenumbers
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_pdfpagenumbers) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:pdfpagenumbers-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/pdfpagenumbers-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [PDF Page Numbers API](https://apiverve.com/marketplace/pdfpagenumbers?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/pdfpagenumbers](https://docs.apiverve.com/ref/pdfpagenumbers)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The PDF Page Numbers API is commonly used for:

- **Web Applications** - Add pdf page numbers features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with pdf page numbers capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the PDF Page Numbers API:

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "pdfName": "5c9f95f9-9719-47c3-a923-be3bc1f1dc91.pdf",
    "pageCount": 2,
    "numberedPages": 2,
    "position": "bottom-center",
    "format": "Page {page} of {total}",
    "startAt": 1,
    "lastLabel": "Page 2 of 2",
    "size": 6218,
    "expires": 1792230037933,
    "downloadURL": "https://storage.googleapis.com/apiverve/APIData/pdfpagenumbers/5c9f95f9-9719-47c3-a923-be3bc1f1dc91.pdf?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1792230037&Signature=a2sCOtSuSIIEWobe8wq5iHcCdqlJMXhrHE9ewxXsf7qrNBK3NHtxrQYk%2Fn1Jpr08aQBVtJclbKX6CFqRigV2IL4suv%2F%2B8WF9LRX%2BhY%2Frhvkw9RfdydlsvALhpPxnxv547eShgBIsuwvEOPFry%2F1J%2FCvt3X%2BT8Iwpz9EtJJVKH8C3u8u26%2FlNjj7XcRCqx6hcVIWvkJEVuZfMQUjlcbtF4IOwvITwlIQW9ChPzMIlXdXu2amBIy9PinQoKsdVopBfTre4W%2BTH6%2BgynWlvnJAHmxM6mWdfLQxTjCyFzdT4ZmJuq%2BRM36d41N62KxiTGyP1cs0YJECt36nI3a7FTzUOrA%3D%3D"
  }
}
```

---

## Support & Community

- 🏠 **API Home**: [PDF Page Numbers API](https://apiverve.com/marketplace/pdfpagenumbers?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
