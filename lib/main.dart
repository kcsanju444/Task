import 'package:flutter/material.dart';
import 'package:task/screen/AddAccountScreen.dart';
import 'package:task/screen/TransactionScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/add',
    routes: {
      '/transaction': (context) => const TransactionScreen(),
      '/add': (context) => const AddAccountScreen(),
    },
  ));
}
