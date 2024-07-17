import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.filename,
  });

  final String filename;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Center(
        child: Image.asset(
          filename,fit: BoxFit.cover,
        ),
        // Text(
        //   message,
        //   style: const TextStyle(fontSize: 20.0),
        //   textAlign: TextAlign.center,
        // ),
      ),
    );
  }
}
