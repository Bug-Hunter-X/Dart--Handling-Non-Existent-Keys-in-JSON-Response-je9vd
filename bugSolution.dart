```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Solution 1: Using containsKey
      if (jsonData.containsKey('key')) {
        final value = jsonData['key'];
        print(value);
      } else {
        print('Key not found');
      }

      // Solution 2: Using ?? operator (null-aware operator)
      final value2 = jsonData['anotherKey'] ?? 'Default Value';
      print(value2);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```