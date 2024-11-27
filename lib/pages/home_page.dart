import 'package:flutter/material.dart';
import 'adding_page.dart';
import 'detailed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> AGs = [];

  void openAddingPage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddingPage(),
      ),
    );

    if (result != null) {
      setState(() {
        AGs.add({
          'title': result['title'],
          'description': result['description'],
        });
      });
    }
  }

  void openDetailedPage(String title, String description) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailedPage(
          title: title,
          description: description,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AG-APP'),
        backgroundColor: Colors.lightBlue.shade300,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: AGs.length,
          itemBuilder: (context, index) {
            final ag = AGs[index];
            return GestureDetector(
              onTap: () => openDetailedPage(ag['title']!, ag['description']!),
              child: Card(
                elevation: 3, // Schatteneffekt
                margin: const EdgeInsets.symmetric(vertical: 8), // Abstand
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.workspaces_filled,
                        color: Colors.lightBlue.shade300,
                        size: 40,
                      ),
                      const SizedBox(width: 16), // Abstand zwischen Icon und Text
                      Expanded(
                        child: Text(
                          ag['title']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios, // Hinweis auf Weiterleitung
                        size: 16,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openAddingPage,
        child: const Icon(Icons.add),
        backgroundColor: Colors.lightBlue.shade300,
      ),
    );
  }
}