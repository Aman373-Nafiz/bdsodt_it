import 'dart:convert';

import 'package:bdsodt_it/Model/DataItem.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TodoVM extends ChangeNotifier {
  int selected_index = 7;
  final url = 'https://api.npoint.io/bc69ae1f6991da81ab9a';
  List<DataItem> datum = [];
  var isLoading = true;
  void changeIndex(int index) {
    selected_index = index;
    print('sel ind: ${selected_index}');
    notifyListeners();
  }

  Future<void> getData() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body)['data'];
        datum = data.map((e) => DataItem.fromJson(e)).toList();
        notifyListeners();
      } else {
        throw Exception("Error from API");
      }
    } catch (e) {
      print("Error caught");
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
