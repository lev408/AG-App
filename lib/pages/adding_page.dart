import 'package:ag_app/pages/home_page.dart';
import 'package:flutter/material.dart';


class AddingPage extends StatelessWidget {
  const AddingPage({super.key});


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
        child: Text('Hier kann man die AGs bearbeiten')
      )
    );
  }
}