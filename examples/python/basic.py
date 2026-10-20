"""
PDF Page Numbers API - Basic Usage Example

This example demonstrates the basic usage of the PDF Page Numbers API.
API Documentation: https://docs.apiverve.com/ref/pdfpagenumbers
"""

import os
import requests
import json

API_KEY = os.getenv('APIVERVE_API_KEY', 'YOUR_API_KEY_HERE')
API_URL = 'https://api.apiverve.com/v1/pdfpagenumbers'

def call_pdfpagenumbers_api():
    """
    Make a POST request to the PDF Page Numbers API
    """
    try:
        # Request body
        request_body &#x3D; {
    &#x27;format&#x27;: &#x27;Page {page} of {total}&#x27;,
    &#x27;pdf&#x27;: &#x27;https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf&#x27;
}

        headers = {
            'x-api-key': API_KEY,
            'Content-Type': 'application/json'
        }

        response = requests.post(API_URL, headers=headers, json=request_body)

        # Raise exception for HTTP errors
        response.raise_for_status()

        data = response.json()

        # Check API response status
        if data.get('status') == 'ok':
            print('✓ Success!')
            print('Response data:', json.dumps(data['data'], indent=2))
            return data['data']
        else:
            print('✗ API Error:', data.get('error', 'Unknown error'))
            return None

    except requests.exceptions.RequestException as e:
        print(f'✗ Request failed: {e}')
        return None

if __name__ == '__main__':
    print('📤 Calling PDF Page Numbers API...\n')

    result = call_pdfpagenumbers_api()

    if result:
        print('\n📊 Final Result:')
        print(json.dumps(result, indent=2))
    else:
        print('\n✗ API call failed')
