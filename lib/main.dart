import 'package:flutter/material.dart';
import 'package:moda_uygulamasi/anasayfa.dart';

void main() => runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Anasayfa(),
    );
  }
}
