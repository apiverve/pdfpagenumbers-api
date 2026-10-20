/**
 * Basic Example - PDF Page Numbers API
 *
 * This example demonstrates how to use the PDF Page Numbers API.
 * Make sure to set your API key in the .env file or replace '[YOUR_API_KEY]' below.
 */

require('dotenv').config();
const pdfpagenumbersAPI = require('../index.js');

// Initialize the API client
const api = new pdfpagenumbersAPI({
    api_key: process.env.API_KEY || '[YOUR_API_KEY]'
});

// Example query
// This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/pdf.pdf';

// Make the API request using callback
console.log('Making request to PDF Page Numbers API...\n');

api.executeWithFile(filePath,
    {
        fields: {
        position: 'bottom-center',
        fontSize: 10,
        format: 'Page {page} of {total}',
        startAt: 1,
        skipFirst: 'skipFirst'
        }
    }, function (error, data) {
    if (error) {
        console.error('Error occurred:');
        if (error.error) {
            console.error('Message:', error.error);
            console.error('Status:', error.status);
        } else {
            console.error(JSON.stringify(error, null, 2));
        }
        return;
    }

    console.log('Response:');
    console.log(JSON.stringify(data, null, 2));
});
