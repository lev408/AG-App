import 'home_page.dart';
import 'package:flutter/material.dart';

class DetailedPage extends StatelessWidget {
  const DetailedPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AG-Beschreibung'
        ),
        backgroundColor: Colors.lightBlue.shade300,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Hier sind die AGs näher beschrieben')
      )
    );
  }
}