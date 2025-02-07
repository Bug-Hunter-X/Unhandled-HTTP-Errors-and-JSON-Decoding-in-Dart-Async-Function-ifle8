```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body) as Map<String, dynamic>;
        return jsonData;
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
        return null; // Or rethrow; // Consider rethrowing the exception
      }
    } else {
      print('HTTP Error: ${response.statusCode} - ${response.reasonPhrase}');
      throw Exception('Failed to load data: ${response.statusCode}'); // Or return null; 
    }
  } catch (e) {
    print('Error: $e');
    //rethrow; // Consider rethrowing the exception
    return null; // or handle the exception differently as per your requirement
  }
}
```