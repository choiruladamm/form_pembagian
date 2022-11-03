import 'package:flutter/material.dart';
import 'package:flutter_form/form_pembagian.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 21, 72, 76),
          title: const Text('FORM PEMBAGIAN'),
          elevation: 0,
        ),
        body: FormPembagian(controller: TextEditingController()),
      ),
    );
  }
}
