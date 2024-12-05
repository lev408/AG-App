import 'package:ag_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://yugjgctggtlawyocxxrk.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl1Z2pnY3RnZ3RsYXd5b2N4eHJrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzIzNjUyMDYsImV4cCI6MjA0Nzk0MTIwNn0.EmdjQ_BYZzHJ_dkdeoCgFGrdnS31H48qGhzLuDsdQG4',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
