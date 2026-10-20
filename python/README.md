PDF Page Numbers API
============

PDF Page Numbers stamps a page number on every page of a PDF, uploaded or fetched from a URL, and returns a download link to the numbered file. Choose the corner or edge and the font size. Paid plans can also set a label format such as Page 3 of 12, the starting number, and skip a cover page.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-pdfpagenumbers.svg)](https://pypi.org/project/apiverve-pdfpagenumbers/)

This is a Python wrapper for the [PDF Page Numbers API](https://apiverve.com/marketplace/pdfpagenumbers?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-pdfpagenumbers
```

Using `pip3`:

```bash
pip3 install apiverve-pdfpagenumbers
```

---

## Configuration

Before using the PDF Page Numbers API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_pdfpagenumbers.apiClient import PdfpagenumbersAPIClient

# Initialize the client with your APIVerve API key
api = PdfpagenumbersAPIClient("[YOUR_API_KEY]")

# This API requires a file upload
files = { "pdf": open("/path/to/image.jpg", "rb") }

try:
    # Make the API call
    result = api.execute_with_file(files)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The PDF Page Numbers API documentation is found here: [https://docs.apiverve.com/ref/pdfpagenumbers](https://docs.apiverve.com/ref/pdfpagenumbers?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_pdfpagenumbers.apiClient import PdfpagenumbersAPIClient

# Initialize the client with your APIVerve API key
api = PdfpagenumbersAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
# This API requires a file upload
files = { "pdf": open("/path/to/image.jpg", "rb") }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute_with_file(files)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `PdfpagenumbersAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_pdfpagenumbers.apiClient import PdfpagenumbersAPIClient, PdfpagenumbersAPIClientError

api = PdfpagenumbersAPIClient("[YOUR_API_KEY]")

# This API requires a file upload
files = { "pdf": open("/path/to/image.jpg", "rb") }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except PdfpagenumbersAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_pdfpagenumbers.apiClient import PdfpagenumbersAPIClient, PdfpagenumbersAPIClientError

api = PdfpagenumbersAPIClient("[YOUR_API_KEY]")

# This API requires a file upload
files = { "pdf": open("/path/to/image.jpg", "rb") }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except PdfpagenumbersAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_pdfpagenumbers.apiClient import PdfpagenumbersAPIClient, PdfpagenumbersAPIClientError

# This API requires a file upload
files = { "pdf": open("/path/to/image.jpg", "rb") }

# Using context manager ensures proper cleanup
with PdfpagenumbersAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except PdfpagenumbersAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_pdfpagenumbers.apiClient import PdfpagenumbersAPIClient

# Enable debug mode
api = PdfpagenumbersAPIClient("[YOUR_API_KEY]", debug=True)

# This API requires a file upload
files = { "pdf": open("/path/to/image.jpg", "rb") }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_pdfpagenumbers.apiClient import PdfpagenumbersAPIClient

api = PdfpagenumbersAPIClient("[YOUR_API_KEY]")

# This API requires a file upload
files = { "pdf": open("/path/to/image.jpg", "rb") }

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
