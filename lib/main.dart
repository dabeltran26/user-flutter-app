import 'package:ant_pack_app/home_page.dart';
import 'package:ant_pack_app/user_detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Users'),
      routes: {
        UserDetailPage.routeName: (context) => UserDetailPage(),
      },
    );
  }
}