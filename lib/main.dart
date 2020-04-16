import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(FriendlyChat());

class FriendlyChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FriendlyChat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'FriendlyChat'),
    );
  }
}