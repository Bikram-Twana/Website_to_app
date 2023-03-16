import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Center(
          child: Text(
        "This is a Dart & Flutter sites viewer app. This app is made using webview flutter",
        style: TextStyle(
          fontSize: 18,
        ),
      )),
    );
  }
}
