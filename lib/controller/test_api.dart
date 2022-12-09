import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_apiii/model/api_model.dart';

class api_provider extends ChangeNotifier {
  String Api = "https://api.genderize.io/?name=karthik";
  int count = 0;
  String gender = "--";
  String name="--";
  double probability=0.0;
  Future<Album> fetch_dat() async {
    final Response = await http.get(Uri.parse(Api));
    if (Response.statusCode == 200) {
      return Album.fromJson(jsonDecode(Response.body));
    } else {
      throw Exception("Filed to load Album");
    }
  }
  fetchdata()async{
        final data = await fetch_dat();
        count=data.count;
        gender=data.gender;
        name=data.name;
        probability=data.probability ;
        notifyListeners();

  }

}
