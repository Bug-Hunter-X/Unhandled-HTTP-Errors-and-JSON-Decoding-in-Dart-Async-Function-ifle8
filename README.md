# Unhandled HTTP Errors and JSON Decoding in Dart Async Function

This repository demonstrates a common error in Dart when handling asynchronous HTTP requests and JSON decoding. The `fetchData` function attempts to fetch data from an API, but it has insufficient error handling. It doesn't handle potential exceptions during the HTTP request or JSON decoding process.

## Problem

The original `bug.dart` file contains the flawed implementation. The primary issues are:

1. **Incomplete HTTP Error Handling:** Only checks for a 200 status code.  Other HTTP error codes (like 404, 500, etc.) are not explicitly handled, leading to potential crashes or unexpected behavior.
2. **Missing JSON Decoding Error Handling:**  `jsonDecode` can throw a `FormatException` if the response isn't valid JSON.  The original code doesn't catch this exception.
3. **Lack of rethrow or informative error messages:**  If an error is caught, it's just printed to the console. A more robust solution would provide more informative error messages or rethrow the exception to a higher level for more comprehensive handling.

## Solution

The `bugSolution.dart` file provides a corrected implementation that addresses these issues. It includes:

1. Comprehensive HTTP status code checking.
2. `FormatException` handling for JSON decoding.
3. More informative error messages to improve debugging.
4. The option to rethrow the exception.

## How to run

1. Clone this repository.
2. Run the Dart code using your preferred Dart development environment (e.g., DartPad, VS Code with the Dart extension).
3. Observe the improved error handling and more robust functionality of the corrected code.