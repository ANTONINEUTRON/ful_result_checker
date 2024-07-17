import 'package:flutter/material.dart';

class ResultViewPage extends StatelessWidget {
  const ResultViewPage({super.key});

  static route() => MaterialPageRoute(
        builder: (context) => const ResultViewPage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("100 Level 2nd Semester"),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
