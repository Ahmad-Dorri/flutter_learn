import 'package:dio/dio.dart';
import 'package:langeek_flutter/learn/learn.dart';

class SubcategoryRepository {
  final Dio dio;

  SubcategoryRepository({required this.dio});

  Future<Subcategory> fetchSubcategory(int id) async {
    final response = await dio.get('https://api.langeek.co/v1/c/en/subcategory/$id');
    if (response.statusCode == 200) {
      return Subcategory.fromJson(response.data);
    } else {
      throw Exception('Failed to load subcategory');
    }
  }
}
