import 'package:flutter/material.dart';

class DetailedPage extends StatelessWidget {
  final String title;
  final String description;

  const DetailedPage({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.lightBlue.shade300,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          description.isNotEmpty
              ? description
              : 'Keine Beschreibung verfügbar.',
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}