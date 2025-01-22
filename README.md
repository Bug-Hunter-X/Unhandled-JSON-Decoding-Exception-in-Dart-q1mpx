# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving network requests and JSON parsing: failure to handle potential `FormatException` exceptions that can arise during `jsonDecode`.  The provided code showcases this issue and its solution.

## Bug Description

The `bug.dart` file contains a function `fetchData` which retrieves data from an API. It correctly handles HTTP request errors, but fails to account for cases where the API response is not valid JSON.  If the JSON is malformed, `jsonDecode` throws a `FormatException`, which is not caught. This results in unexpected app termination.

## Solution

The `bugSolution.dart` file presents a corrected version.  It includes a `try-catch` block specifically to handle `FormatException` during JSON decoding, providing more robust error handling.