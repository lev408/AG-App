import 'package:flutter/material.dart';
import 'package:ag_app/utils/ag_liste.dart';
import 'adding_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Liste für AGs
  List<List<dynamic>> AGs = [];

  // Methode, um neue AG hinzuzufügen
  void addAg(String agName) {
    setState(() {
      if (agName.trim().isNotEmpty) {
        AGs.add([agName, false]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AG-APP',
        ),
        backgroundColor: Colors.lightBlue.shade300,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: AGs.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  child: AgListe(
                    taskName: AGs[index][0],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navigation zur AddingPage und Rückgabe der Eingabe
          final newAg = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddingPage()),
          );

          // Falls ein Wert zurückgegeben wird, zur Liste hinzufügen
          if (newAg != null && newAg is String) {
            addAg(newAg);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}