import 'dart:convert';
import 'package:http/http.dart' as http;

class THttpHelper {
  
  static const String _baseUrl = "https://api.example.com";

  // Helper function to make GET request
  static Future<Map<String,dynamic>> get(String endpoint) async {
  try {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return handleResponse(response);
  } catch (e) {
    return {'error': e.toString()};
  }
  }

  // Helper function to make POST request
  static Future<Map<String,dynamic>> post(String endpoint, Map<String,dynamic> body) async {
  try {
    final response = await http.post(
    Uri.parse('$_baseUrl/$endpoint'),
    body: json.encode(body),
    headers: {'Content-Type': 'application/json'},
    );
    return handleResponse(response);
  } catch (e) {
    return {'error': e.toString()};
  }
  }

  // Helper function to make PUT request
  static Future<Map<String,dynamic>> put(String endpoint, Map<String,dynamic> body) async {
  try {
    final response = await http.put(
    Uri.parse('$_baseUrl/$endpoint'),
    body: json.encode(body),
    headers: {'Content-Type': 'application/json'},
    );
    return handleResponse(response);
  } catch (e) {
    return {'error': e.toString()};
  }
  }

  // Helper function to make DELETE request
  static Future<Map<String,dynamic>> delete(String endpoint) async {
  try {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return handleResponse(response);
  } catch (e) {
    return {'error': e.toString()};
  }
  }

  // Helper function to handle response
  static Map<String, dynamic> handleResponse(http.Response response) {
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    return {'error': 'Request failed with status: ${response.statusCode}'};
  }
  }
  
}