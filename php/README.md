# PDF Page Numbers API - PHP Package

PDF Page Numbers stamps a page number on every page of a PDF, uploaded or fetched from a URL, and returns a download link to the numbered file. Choose the corner or edge and the font size. Paid plans can also set a label format such as Page 3 of 12, the starting number, and skip a cover page.

## Installation

Install via Composer:

```bash
composer require apiverve/pdfpagenumbers
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Pdfpagenumbers\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'format' => 'Page {page} of {total}',
    'pdf' => 'https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf'
]);

// Print the response
print_r($response);
```

### File Upload

```php
// Upload a file
$response = $client->executeWithFile('/path/to/file.jpg');

// Or use a URL
$response = $client->executeWithUrl('https://example.com/image.jpg');
```

### Error Handling

```php
use APIVerve\Pdfpagenumbers\Client;
use APIVerve\Pdfpagenumbers\Exceptions\APIException;
use APIVerve\Pdfpagenumbers\Exceptions\ValidationException;

try {
    $response = $client->execute(['format' => 'Page {page} of {total}', 'pdf' => 'https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/pdfpagenumbers?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/pdfpagenumbers?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/pdfpagenumbers?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
