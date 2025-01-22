```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Process jsonData
        print(jsonData);
      } on FormatException catch (e) {
        print('Error: Invalid JSON format - $e');
      } 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow; 
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