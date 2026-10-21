# PDF Page Numbers API - Ruby Gem

PDF Page Numbers stamps a page number on every page of a PDF, uploaded or fetched from a URL, and returns a download link to the numbered file. Choose the corner or edge and the font size. Paid plans can also set a label format such as Page 3 of 12, the starting number, and skip a cover page.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_pdfpagenumbers'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_pdfpagenumbers
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_pdfpagenumbers'

# Initialize the client
client = APIVerve::Pdfpagenumbers::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  format: "Page {page} of {total}",
  pdf: "https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf"
})

# Print the response
puts response
```

### File Upload

```ruby
# Upload a file
response = client.execute_with_file("/path/to/file.jpg")

# Or use a URL
response = client.execute_with_url("https://example.com/image.jpg")
```

### Error Handling

```ruby
begin
  response = client.execute({ format: "Page {page} of {total}", pdf: "https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf" })
  puts response["data"]
rescue APIVerve::Pdfpagenumbers::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Pdfpagenumbers::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Pdfpagenumbers::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/pdfpagenumbers?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/pdfpagenumbers?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/pdfpagenumbers?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
