import 'package:flutter/material.dart';

class AddingPage extends StatefulWidget {
  const AddingPage({super.key});

  @override
  State<AddingPage> createState() => _AddingPageState();
}

class _AddingPageState extends State<AddingPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void saveAndReturn() {
    if (_titleController.text.trim().isNotEmpty) {
      Navigator.pop(context, {
        'title': _titleController.text.trim(),
        'description': _descriptionController.text.trim(),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AGs hinzufügen'),
        backgroundColor: Colors.lightBlue.shade300,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Titel-Textfeld
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                hintText: 'AG Titel eingeben',
                filled: true,
                fillColor: Colors.grey.shade200,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Beschreibung-Textfeld
            Expanded(
              child: TextField(
                controller: _descriptionController,
                maxLines: null,
                expands: true,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: 'AG Beschreibung eingeben',
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Hinzufügen-Button
            ElevatedButton.icon(
              onPressed: saveAndReturn,
              icon: const Icon(Icons.add),
              label: const Text('Hinzufügen'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue.shade300,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}