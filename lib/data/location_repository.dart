//https://openapi.naver.com/v1/search/local.json?query=samsung
//query String
//X-Naver-Client-Id
//YpAdaCBYtLZyr6WtmQzT
//X-Naver-Client-Secret
//j0nAUpT0FI

import 'dart:convert';

import 'package:flutter_map_searching_app/data/location.dart';
import 'package:http/http.dart';

class LocationRepository {
  final client = Client();
  Future<List<Location>?> searchLocation() async {
    final response = await client.get(
        Uri.parse(
            'https://openapi.naver.com/v1/search/local.json?query=samsung'),
        headers: {
          'X-Naver-Client-Id': 'YpAdaCBYtLZyr6WtmQzT',
          'X-Naver-Client-Secret': 'j0nAUpT0FI',
        });
    if (response.statusCode == 200) {
      final decodeJson = jsonDecode(response.body);
      final jsonList = List.from(decodeJson['items']);
      final jsonMap = jsonList.map((e) => Location.fromJson(e));
      final list = jsonMap.toList();
      return list;
    }
  }
}
