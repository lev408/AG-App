import 'package:flutter/material.dart';


class DetailedPage extends StatelessWidget {
  const DetailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AGs hinzufügen'
        ),
        backgroundColor: Colors.lightBlue.shade300,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('das ist die neue Seite',
        style: TextStyle(fontSize: 20),),
      )
    );
  }
}