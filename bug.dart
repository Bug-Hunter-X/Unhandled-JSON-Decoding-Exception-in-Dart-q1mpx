```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during API call
    print('Error: $e');
    // Consider rethrowing the exception or handling it appropriately
    rethrow; // Re-throw to allow higher levels to handle the error
  }
}

void main() async {
  try {
    await fetchData();
    print("Data fetched successfully");
  } catch (e) {
    print("Error fetching data: $e");
  }
}
```