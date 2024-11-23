import 'package:flutter/material.dart';
import 'package:ag_app/utils/ag_liste.dart';
import 'detailed_page.dart';
import 'adding_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  // Liste für AGs, die nur während der aktuellen Sitzung gespeichert wird
  List<List<dynamic>> AGs = [];

  // Neue AG speichern
  void saveNewAg() {
    setState(() {
      if (_controller.text.trim().isNotEmpty) {
        AGs.add([_controller.text, false]);
        _controller.clear();  // Löscht das Eingabefeld nach dem Hinzufügen
      }
    });
  }

  // Wenn die Enter-Taste gedrückt wird, wird ein neuer AG-Eintrag hinzugefügt
  void onSubmit(String value) {
    saveNewAg();  // Ruft die Methode auf, die auch beim Drücken des Buttons verwendet wird
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
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),  // Abstand zwischen den Blöcken verringert
                  child: Row(
                    children: [
                      Expanded(
                        child: AgListe(
                          taskName: AGs[index][0],  // Anzeige des AG-Namens
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Neue AG hinzufügen',
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onSubmitted: onSubmit,  // Füge die onSubmitted-Funktion hinzu
                  ),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(context
                      , MaterialPageRoute(
                        builder: (context) => const AddingPage(),
                        )
                        );
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
