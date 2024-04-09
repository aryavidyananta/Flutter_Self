import 'dart:convert';
import 'package:flutter_ujicoba/dto/news.dart';
import 'package:flutter_ujicoba/endpoints/endpoints.dart';
import 'package:http/http.dart' as http;

class Dataservis {
  static Future<List<news>> fetchNews() async {
    final response = await http.get(Uri.parse(EndPoints.news));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((item) => news.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
