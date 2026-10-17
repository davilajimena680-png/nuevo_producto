import 'package:flutter/material.dart';
import 'package:nuevo_producto/views/nuevo_producto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuevo producto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2F5FE3)),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const PantallaNuevoProducto(),
    );
  }
}