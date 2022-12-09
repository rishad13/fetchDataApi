import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_apiii/controller/test_api.dart';
import 'package:test_apiii/home_screen/home_screen.dart';

void main() {
  
  runApp(ChangeNotifierProvider<api_provider>(
      create: (context) => api_provider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home_screen(),
      )));
}
