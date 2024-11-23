import 'package:flutter/material.dart';

class AgListe extends StatelessWidget {
  const AgListe({super.key, required this.taskName
  });

final String taskName;
 

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
              bottom: 0,
              ),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Text(
              taskName,
              style: const TextStyle(
                fontSize: 18,
              ),
            ) ,
            ),
          );
  }
}