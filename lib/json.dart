import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_convert/service.dart';

class ProductService {
  static const baseUrl = "http://localhost:3000/produk";

  Future<List<Produk>> fetchProduct() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));
      final body = response.body;
      final result = jsonDecode(body);
      List<Produk> produk = (result['data'] as List)
          .map((produks) => Produk.fromMap(produks))
          .toList();
      return produk;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
